Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164382745C
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770431634; cv=none; b=WkxGXh9aJh01A48U5NrWQuz6vp5hgKeELVRyhUsu6e7hkM4RnOmlUTQiVUYfYWUjHIsSZwtxElJqvMrZ7JPItmYv7JNS/P8Y9xMAP4KSdVtDdLGjwcaBBTh2tNRJc5UJ4cNRCMTCdI5C638CilPkBpCOwIao+qKQ4ymFvg2HX4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770431634; c=relaxed/simple;
	bh=XkRn+u55Xh82Tt/Ks6dTpKW2EL4Yd2+hzPw3VRD15Q4=;
	h=To:Subject:From:Message-Id:Date; b=gBsZpPLVPDua4LUGVmiNEVudD5ksj1eujBHcZ+Dfb3bXReT8tdwya5N43+9xyi/xJ1q4wEmD9hix2WPTSWoLMblQETq0ET2LflUt896ttlPjQvSMjBPARcu9NweNEJubdb1Rpzq9p3Ivt2wdZUlMJflmJrU7OsQ4cdKAe6n8XCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Egalqti4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Egalqti4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4155C116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770431633;
	bh=XkRn+u55Xh82Tt/Ks6dTpKW2EL4Yd2+hzPw3VRD15Q4=;
	h=To:Subject:From:Date:From;
	b=Egalqti4eC3ueruHaFP43/fSbao4TrdMC6D87aNTCTuvwwuvT6xVw4oi8raISGVVe
	 PECE9hyXz/p/zI7+gxTTlbEr+0rJejYuIV8TA2l0V1il2Aw6+SkPA+G6Lh/d3lZEuA
	 IGVRELAGu6EydZc9AODg+rcIZaRAvRCk0vDJwjMj4sqCKkxROZauhVUOuMC42NobQa
	 aELcsTKupkZHtCvoCLd8fI294GXYjwgKGocuq7N82pvxf92LNEp3J+M4qPJya/4zfz
	 m9Ftdt14JwqPRAbOvq7VpWfGHruak/3kfs9MUVSphY9ICKIWErpFdYngPgIKiSO1uX
	 /JaHp0jC+f99Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB85EE6B6F
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177043163360.32752.830063133029451054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6afc77321937662d4e32fd30dec4209587f091159943bf479abb6ac7567dc55f
Date: Sat, 07 Feb 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770431633
