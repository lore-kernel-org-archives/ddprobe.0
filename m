Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2C9A23
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9751AC433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671439287;
	bh=FMPA1xCPYodbf1bCLryRcOMmUirtpJ86VoAE0shiKow=;
	h=To:Subject:From:Date:From;
	b=BcJz+gGQmQjlqwnGUUxcTVryTFAzZTMhIbPsvV8+B6niFP012h8E9BFEmI6q379k1
	 SlodiA5y3ZPU6ueWomEPOZWcx7Z9Zz7MvkW+L43WfjespXGgKY7RgyX8eiHGMR9Fih
	 NB0aVrGT7dd8bI0OJGcxX6qBajdPQc/EPyuIN66ckftcUoDpan26WZcq1igya4FDog
	 Wcz7O90JoiUIFsJpZQJmKnsvAXJuzUI1VlWmAinw4XSNFEts6Wk7snMX6slKO1bKVV
	 W+TpuOarlpMk5k/iKIT/NJxWnuIH6P/rBPSPFtvM+4cPuoAq3DRqsQCIErt4kKiakM
	 l4EDJPajRADzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ADFFC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167143928743.1903.17459541663075776002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c416aac22e6e4912f716ff64ec505adf37ec9a6d8ac8ee48a308e7807c867b
Date: Mon, 19 Dec 2022 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671439287
