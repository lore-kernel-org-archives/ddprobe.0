Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C48953BA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 12:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A8EC433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 12:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688558828;
	bh=zlYI3IM0EytB6kApa3frB91TiJ341wP7uTKjCOPNtP8=;
	h=To:Subject:From:Date:From;
	b=Ah3H6dEO7x434xIxfWfs33bO1kNxI4Kr/RHtY6Lb95Q+jFujuRXf2a9f7xcmupvJr
	 KIOvrorKRqEvAGDPwXVCKiNX6ZxYYuMODAj13uMpxLEhd12A5U0BHQmLPHH0tyuj0k
	 J1JDV/u6iAFKnGV77ryI3MMnNvtYMhQYt+FwccfMDgv4QJb5b84X/vvinJdbne4HRd
	 mAtHsHCDyuEXdk0v1x55U2L9czQ3IkB6khSS8oCi097gmeZFz4tT6TL/Igi9bK42bT
	 BUK870GarFafUS+TCSOUen9jfbhEtGbvEou79aGFDWzWiG3nyEpGMnqWEk65sV1jbO
	 BL2PfV14I2+5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A537DEB64DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 12:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168855882866.24210.6433409289261720645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07222a6c7b71828973ded5fb4aa61d1f2b8c2d512036632fb3ddcb6bcecc99a3
Date: Wed, 05 Jul 2023 12:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688558828
