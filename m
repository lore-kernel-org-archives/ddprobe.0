Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B9714AAF
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 22:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84A2C433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 22:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693346648;
	bh=xJYNsvp7W3/xy9y0DonwV+iDRcGs6guLhpa3olxwKV0=;
	h=To:Subject:From:Date:From;
	b=hPiC1H9XXMmsKPtAxBJ7Sgo8B1YSMqhRiICY7G8h4mrYl/4q39J7s2W6tm3Jv9TPQ
	 aOdOQGX4AKRkf82Y1LFwNKNtxIgYz1Gg+E+l0HMZz2y89+hgKu5pTQ8w5k/EXokrkK
	 XBDaZFULaYWTH86GXESwhu4OmIShFEZ1tB1/mZ0Mco539EYbxc1vj95U1rwB5EDOVG
	 cZrcYbLSkuzXmWH07b0SCWJta0oc7rBb44ZgLeAF2QfjhtsEtTB9Ele2TDbnFGwjbm
	 FSamD+1Y7tgLVgAHz/xtg7YgonTRFLhq7yAO9mnsEyR5fuMiMwqeS6fcE+YCvpNUuf
	 NvATeufIhT35A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9862C6FA8F
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 22:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169334664868.9911.2475523536068247408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 046ac4dee313db22db8815acbb900c4793d8743996654de3724955a5b5e9dc02
Date: Tue, 29 Aug 2023 22:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693346648
