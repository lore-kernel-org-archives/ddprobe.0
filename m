Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B56F5C82
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 03:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712893763; cv=none; b=U5fsRKhFosV2DQajhcH151Bamw178H3gMwlTBAB9b1UCjpP1V9VmPvDV7GwOYnKrC67xTUk06RP2S3KIrZcWfqKICXxAoLtSsyzaGaH96E1gsk5hQUcQhUcSYcvdJQ/kD6LqLhvbatGFgzVbA/eIRUuSJsbKOsw8IjRmPjkPVjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712893763; c=relaxed/simple;
	bh=BorZaeET9xCEIevbNZOvU1gjZ3Ykpw9k3JN80lPMuKI=;
	h=To:Subject:From:Message-Id:Date; b=aTGDR6nRLjx55wvnaP86aweeQBn2roYpUmnzLi8VWEQNyEl5nVW/GWfFpxhrCSbt4rM7C0I382AKb1ckWP/HwuBbhxSgxk7GtS+gfq4IbNrnoLIJWG81f5yYYitnxQxI8zy8ozbXkoqILydoO35uKXMixjoBrF6K6FVMfVGK8Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=St8+WNiK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="St8+WNiK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECFE9C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 03:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712893763;
	bh=BorZaeET9xCEIevbNZOvU1gjZ3Ykpw9k3JN80lPMuKI=;
	h=To:Subject:From:Date:From;
	b=St8+WNiK7NYYW6SbGHdTe/ql+8WrsChRZJZgrPYoUxsNqCGkNqQYVqtWqcmDvnaP3
	 y1ht1Dcc3CHdabq1ZXiPPCEzjo5BFLzalCqiESMPqa+4DS82yJvqpSDdZQRi9TwTkZ
	 3dLkcH6mSQ1NBOnqddWJ+NTbgGDg33RRuDWzjVs18xXkEZkiKjwGnysT2kwv/N5fkh
	 U5LaFzFPi0BluM64UWTMfoc9UWCKGemHNknCmb3tLOY2Rgw0ukAov5X4loENyJ/gzR
	 si729Jg3LWhEB1X98zBjaRPInJ/TN1+YRtOwgEqcTO3ttb0LWzZvlbyxSNwR/gUwgC
	 QIXrBRCpr5Rrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A3EC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 03:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171289376277.7792.2520350341964721061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dde0cb2467b32157884ef72be915bf903876793aa11501df047f48575c58b707
Date: Fri, 12 Apr 2024 03:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712893762
