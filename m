Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242B41DE2B5
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 11:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739965734; cv=none; b=MOBbkP8kNEjHuWSptTvmisO7qTSWZSI78t0vblMj3kMD3VHl7dcEqoRwRzB3fPalg0EoNoB6KplTNgqpSxIYoAGx3DutZQajwGjzrN3Lnv9DBYBk8qLgW8oa7mRDTOf25hk+GIcQ5GnPHB5Ngq2YDcheX0uUDQI6/pWF91TSSVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739965734; c=relaxed/simple;
	bh=gfL+2gocBb0JAG3YXmPpJtb+GZp5RvfGcRi5RnMPq7U=;
	h=To:Subject:From:Message-Id:Date; b=tmB+RWoyGYOlXM42qJJHHgl6wz6RXgVtBMXm/+LBlJYrD1eV0wXQ7oyuKj9/8bcNpKQee1MU6VHFEj8x8UZvlla/AsgOmBxt20AwYyeNb5UPENqD4M0LZ2zY9uZ34c87eitTb0QE1yYa06o6HW/Pij+t8NZbkdwFtDu3Sd+x44o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIYrhwZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIYrhwZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4893C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 11:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739965733;
	bh=gfL+2gocBb0JAG3YXmPpJtb+GZp5RvfGcRi5RnMPq7U=;
	h=To:Subject:From:Date:From;
	b=TIYrhwZX6gPyLVMFM23ak9d+rIcewHzmr8BplSOmdl127CldBZXzLA4hG0EdZHhWJ
	 BrtG8jQ/biCsZ44mnwXePde0TBA+V0CMVFiRGvytegAGixgkNXRwgJ80LO42Uf2cJA
	 fYgMFDhyw9srV4rBbUXVqppL2NFNMnBX+mkIcZw9x2/TyEV4TRxTRYFQDaPq4dlFPi
	 ygiNHIkRlmx4DfasQ5c+iJWgiIO5E5i9DVfd+YZm6ZdB5nbAY3FvnLfmJ603EIuDtG
	 J9gqfTZNZQkpGMYjpdZ9SN4aqZBiYZAr31IhOtBV3hdd6f6IQkGq9axm4T1oyJroIt
	 h9y2Q8u1HAR3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932C9C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 11:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173996573359.3920.628601253588851923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ee3fffc91e830942ac8c4e5af46bdecbd57b02d5c87c4b7a794de342eaaf48
Date: Wed, 19 Feb 2025 11:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739965733
