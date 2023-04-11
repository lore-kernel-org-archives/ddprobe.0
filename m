Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3883A2F29
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 11:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB37C433D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 11:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681213925;
	bh=ihVipNIlPlZCIzNpHRoUFdyaDVxH2XQXHOPKpS1v1DQ=;
	h=To:Subject:From:Date:From;
	b=Xc58JkKNc8Dwmq9d0F17tgDAcIS8CMa4wGVxr5rNMFPg9MAEZEIx11/fB8f5XfMvt
	 J8kP+PXpER28x2NIgF3So0HEjj0qOUpLshNpcgnJbd8NN6uyD9aN9yHdebiqC4cLL8
	 ZugNHoTQjtWAoiOFlNUSaRnlJylyAOxa7zdxuHgogtgB9x0b7K2Xn0R35vS/S2sRFb
	 4jV5QQ6WWeW9jDtdBEeM9aiD+mpqKreGUO/SXOQo9uJG5G0a5AzcZyEu+XmW4c9E0P
	 NVnG18yLH4MGFiY2lkK5siRcm6+reuhjO6F00VE/0euQI/7Sn353+U/dSpwOIeJN8S
	 H15bzXskMHfaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9107C76196
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 11:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168121392575.26611.9682904713387147543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899558ccd45f04c5f382848f437c5eb45e1d3d589340f69e66b08604d0f37227
Date: Tue, 11 Apr 2023 11:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681213925
