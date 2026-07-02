Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D21134CFDE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 10:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782989914; cv=none; b=ouddVpo3J8DMDH6uVrxDPL4JmC+ByOMLiBn88r3M7xptrSj0zCNQB8QZtNW20IgFPcjk6kbVPx3Ish0hkWHv45Kbpd30hjMjYAxNOFFkohUMBr8KOBmb/r3fYx+2+wm7EPmiFSxWSsmv4Zn5hW9bt9nhopkawAa68HWOcOOqNVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782989914; c=relaxed/simple;
	bh=0y7cIdSbpRCSBCkX0y8fVPBZDlcDBntfwsjZt6u+G/E=;
	h=To:Subject:From:Message-Id:Date; b=dDtmnHwXrBvPpX0ZbWTb1rBE2anNupC88ILe000MHiXDe3x4gpgcm8a8tu9wHDrR91b67FuCG+nH07etEeJujLOcpB4j7wvnG4iqoFlVRxUNotFcYfFp9u6ov8ZRkYH3eAZYP8m5t3wVgRs2WQWCCl5EX56lhosxUiJc7P+PZDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtKS/sVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtKS/sVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA926C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782989913;
	bh=0y7cIdSbpRCSBCkX0y8fVPBZDlcDBntfwsjZt6u+G/E=;
	h=To:Subject:From:Date:From;
	b=qtKS/sVG4ZHNFOsKbmG5WPtsKq3ubXBcKyfdgAe/96hkNhwPmHf3w5OjW4Ow/wgq+
	 QTN78IDqevLbBA87LgFyf2tYw8S+7XS1/YtCFFtqaU7cgThq/b3Dogjgq4zVctjjHN
	 HNYXjLkZ6YfWFHIB3rr9UbZqi8CauJtUWg4geBG4gR9PaDzUcNRTsHK3AW6UiQV/RK
	 ysleCowUylLHffWMbAYNNazbO/Ty1F58NpUmRxWSa0ySB0yObQlmnhFYB1VA48yVRl
	 lq1h5aJqD6TWMKNP9dRP+NIqL3WpZtSZlgRWRggQviKhzF1TYIv7SgZpmwjrh6+Rep
	 9DWRiIE4ffAPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8549C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178298991368.20152.14489860023920690694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd917c96d8dc0205ed1178da0de3858bb646a1eb4345003764faac2cd07d4c57
Date: Thu, 02 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782989913
