Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51387F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E7C7C433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662948053;
	bh=Sd1FnIGf0cvE45wTrKXDOj7GL6efFf0NohvXYe1DPK8=;
	h=To:Subject:From:Date:From;
	b=fYCUWlc/LIy9gFKsV96cbbVMXYRs/v2x17iYi8GBVRPUNuTpBL8obJ63I8+k6UnFV
	 0M2/TZvPlRyrZ09x8rjfdtvDnKBUwbw0Ovw8llDVkdKfaqL9CYV8pkQbE6sP+gM6hX
	 WUSyGEQGAR+eaLtzkmzBxxZkMLmmdZFMF7FaUv7NJn4yUWdNxs2p2CCKuRH94LAKNw
	 wKhB8B1eEMRsoPkUUS86Y8bglH8FU/fBDhL/vpWK57pAFt7y4CeqhnSPZ43KDyHy+x
	 NiA8ViIMKRFAV43qfIl5un+JZtV13Zu+74/CiwpLGOu1KWnmTjW6L8npvQoc1oHi52
	 hNsOfYaJC2ETQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54094ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166294805331.4929.11746068152808887770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966cc7292c0d520768c62a9574ef0e769d40acde0055aac567c5dec6d12a6a4f
Date: Mon, 12 Sep 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662948053
