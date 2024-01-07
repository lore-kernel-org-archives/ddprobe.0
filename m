Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058B311CAD
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0WWJBwo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C99C433C8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704604096;
	bh=ec9sTfaHM57QhJy0KEPSRMLET6X9RJWkbWFb28iCyRE=;
	h=To:Subject:From:Date:From;
	b=h0WWJBwoB7eO2g5RsThujaoLmvWdPUMm88+Rg/naUTvIp4dfMKm/bPuHqqYG5s3sR
	 U3C2dJdMDQAcSqwSeq9dcdi0ncMEuSV2s/Ie+qo8E8b4A5DAwhgJKxWtDt+0WW8wNB
	 66KQckhWO1EKh+qaPn8UVZ4oqddM1WIzIpx93prJSdhDQktvAUMFftcebBVVAIaEMu
	 hrEYHgPfWA02Ig2RgBjT8hBrf9UqvPhg7ytUur3NpSC8OY6c5HLA0W0gKEA+iv8LVg
	 1NTIp+h5V0fQ13BzRW7McThSM7bag2f6f3XgcKPG4oB263GnouPlqj6e614fY3xPlG
	 sbD/DKBiaoQdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BEEC47073
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170460409640.11386.10957993328351585490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d65337180c7f6b7ed52465aea147761a83093633df3836bd2ccf21fa66778b
Date: Sun, 07 Jan 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704604096
