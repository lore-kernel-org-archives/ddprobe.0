Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0BC7F
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEArm0AF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83725C433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701995296;
	bh=RXaCxTsu/NRNmHvpKGXq7XXAyKdMeux+KaA5V5hI2C0=;
	h=To:Subject:From:Date:From;
	b=GEArm0AFs5lKenBdHGcDrEMRD56EUaaIY84BL7qJY8TngdavKSkl1RgndQQRa5VDg
	 sqBqEnsjtGf+3sS2vcusr9rGX3cpRfOsibO2DwH8yeBR9lfE7T/MsyoKuX9equrldF
	 dgTMY4Y5GPVWi1e973NBuzEFIx5bDBsEunCu1YmPfUT5e33iNfqVobku82r3dH6nvY
	 8XdN0z7Da+B4IKTmhEOlQC1S5gKAI2xeUp0+IEUNWh51Q/Fik/qgLCK1ldkJN+EvTO
	 PFjQZo4iwWli8obml1h0Khdy9PLgmYNSAGZeuALoNoyeXf14EW4L5hh0xiVydv7eG3
	 Pc1AiB3exQBRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B4FC4167B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170199529637.15415.17328181967789302497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 883efef1f0050c656256a91eb693bcd2ccdcb7d65636dc28c4e9e08b9cb059c5
Date: Fri, 08 Dec 2023 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701995296
