Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE42D3C02
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A441C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662365453;
	bh=jtzTh8Wk3TBMfkMiTrkPG9QXElSBpccVBeApbQkhhFU=;
	h=To:Subject:From:Date:From;
	b=uDj7yVbWFpao1sGhiBHal2fvLjWkAnBi5kUCVrc989l44J6q1UXbmbsam3RKc1A+V
	 88hv/u7LbI812Cx7VpDCrqEN3Oxs8L+QdZx92PxuYYIgoZdhPCBWBG/HuvoIvtYJVY
	 8uJCgP+DYWc05c6tJ5S8M24IbTPBfkazBhHTDE6ZWR9XByniTASb/pa/eECq8IwBLv
	 QMBzMagEYqoA60qSnQS0XUI+kalLbREHv5n+/Jw8hGsbI7AjhOf8CKdd0BDh94kyIq
	 vTxqREWbnSou552rbNxnOk3YR0zNJ2rIApiRGehBao3w2UeTySqBYY/b0PmcK5G1yF
	 LSWGs6Q+Zug3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B80ECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166236545332.28254.12006620806129674047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f91d63a18853ff9301ef451164223cf2a3386370e3a0450a21aa8e2007285df
Date: Mon, 05 Sep 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662365453
