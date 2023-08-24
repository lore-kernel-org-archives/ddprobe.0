Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A5D12B66
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 15:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2268C433C7
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 15:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692891248;
	bh=M06n2RgB1PuYn++2xl9a/O7rjYzOnZsJJJDVbEr4Mcc=;
	h=To:Subject:From:Date:From;
	b=DDRpqnrXPV9dPu92mGbxmyB9izLTyp/0+WwmRj6bJBYx50f8CTGLWooQew6IVOWav
	 mqp0skiei3VFTZrq2vEH4ElXqgKCRyvBKw2Wh4XEmkCzsIF6fXOgc5VRKhf+QArIGI
	 F/NnjmtNiboiDfxtjBCzxiJyDl6oXGA7YFN8fOvP7yVaalhQmMnIoJrFT1heJvU1Ek
	 QRKLNkTrfHiy/9IunFTfGqDv8aa5tzEFCthVvZ5JivyeEa99Q5dxm5UxFSRM88uA/k
	 d9glyfRZrSfq8jrjnO2o0Bgf0sggBgYTgq5uWgTfWqrAb3Ktf6ymJxnUrviY4jc2k8
	 DvPM2UiIT5Mfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E40C3DA6F
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 15:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169289124874.28788.9302256600061997869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e322efd4660153ea258bedd1511a973d94353d96773de55312f997df7e0c9545
Date: Thu, 24 Aug 2023 15:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692891248
