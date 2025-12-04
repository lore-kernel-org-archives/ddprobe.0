Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246B4F513
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764828774; cv=none; b=roNSZHW7fFQ+HrZH8NYggGvuiOjvOGbtoH+0UoORJP1YZYIV2Ipvo9QsaPmn/nGMG+dleaZApwXyDKf76wqCWX+sFgcf/LDrqTTJ7pQ70TD2pTUlFJjUYX7FyaCNTIo3UQylm3ZyZz6tSPk5xyHfkYDIenuBSbFX92pHmjfBoaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764828774; c=relaxed/simple;
	bh=10X/9Yb3WEO4KJoSG9rcIUm6g+Vrx0/AeP/lzIVrMgA=;
	h=To:Subject:From:Message-Id:Date; b=pI50bNR0w1j1gtdT0ClfnGazNBPPybfCr3AoHcCFlUDTqaDzWFVQnxZbY3etpP7LZjEFkxPenOYNTM2nyLv9hPyLnf1Z5H3sm8BkaH951sp/V1HpBX14Zp0+Rioe7AFRvItlhotejMrL5aE65djDM1eyxo01DTVUDutLElinMhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtaS5fo7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtaS5fo7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCAEC113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764828773;
	bh=10X/9Yb3WEO4KJoSG9rcIUm6g+Vrx0/AeP/lzIVrMgA=;
	h=To:Subject:From:Date:From;
	b=MtaS5fo7TzM5VrLOG6Pt1//lp9QIv6KnvQYO8CWaKEz+1FHzC1vQwRaPaafvelb99
	 HH6ca/ttrEFhPK4KbQoMHaNLCf7Bxva+RHz5+ferOQBoMEle+9YMIWJcLOPLGhrH/H
	 dLsyPLgJvjaSxow6QIRNfz1FGQ8NuS8ROgbGiBmvz8OJbAP82HhBrtJJ2yLfBvdW+I
	 I11JfcU/WWkPDOsPn66jRuyCW4PPxjcTMqFUOF4IB89LH+MayRHIYZc0nUI0DDSsTV
	 9J8LhzDAUznLNefUwy+Mxistkw8Cpg3vRIs8f0UiYcjGgV5iCtPlZ8FABsiIUJcguP
	 kNwpdy1TMNTBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE9D1D86F
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176482877358.30522.13686241676935785587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022dfa35fc6ddd759a61befe70016d158fb389cd8580deb6089fce45d86e82f5
Date: Thu, 04 Dec 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764828773
