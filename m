Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC0433B7A8
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774211693; cv=none; b=Rfrb50qJjoiV2wmXuSTksqD28it7iYePHL9l0Br5G1OUlQybFTwDrncYJAL+Eg0YXCXms+dPwApVPkUU/UfeYh5Vu04xwTngHm8nmaGMOhXlRksFDlXHTe4llO6ayiE8CE3JBGlCbKED/H9yuXq7EB0vZqkKnzdzYprt4FlxHX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774211693; c=relaxed/simple;
	bh=4IZACna6hUN8tFRZMdSVI6wI0XPwL6V3fcouOm8l0vk=;
	h=To:Subject:From:Message-Id:Date; b=rBMRZ5QAdsTIiY6Y1Uf3jdtMu+/m14HL7bKSaVAZUKR7OYchvDYCJKL6NNlAmMpE8BXE4wmDlMbC3GM62o8xG0gDiEyaGi5fKMCZoZaeY+GqrGIo1nQ4RtQx2x5QHz8jMvuLrplNsvgMN/HHfTIXTNWQCZyd62CWKQouVyHoHAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hudopUe5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hudopUe5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CEEC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774211693;
	bh=4IZACna6hUN8tFRZMdSVI6wI0XPwL6V3fcouOm8l0vk=;
	h=To:Subject:From:Date:From;
	b=hudopUe5G/RneBV0/5G0IiTRUduj6ZeqjuBpm7GnW8Z7qDDLj8DLupP0gBpfNOfx6
	 AGzLCHBNIch4GMvpAFbq3TKvWQXGDjDlN4nwvXHKiMsEd/WEPrJX0Qeq7Sg/BXszmu
	 I7EahIibr+qRoF6TRDRox8BwK9GQVznbsObiUeOogy4KZJ9nUEPvXl9Kse7pK2rkX5
	 plz5ODRBbiRCz0GFLxeB1JCBVZeMc7zbrLPlyd7CjAvQmKmzrsX7JUA2TbTz9snes3
	 QeAWZCWJU7jE9I+DE31ZJfCoWY+RfdOnLr7sbqz5Qu7KfaIGaQycA9DZTeyexNR2e0
	 Aolc4ezrbP5JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9292CD58CA1
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177421169358.19915.15543344463114957452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ce93a73bad06158f67fe01f4a88735e9de3cc69baf36ac4028bc92a5d9835b
Date: Sun, 22 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774211693
