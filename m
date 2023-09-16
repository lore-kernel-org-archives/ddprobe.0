Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569426134
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 13:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DF6C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 13:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694869508;
	bh=bqmNlQD42Aw9fxKHOTJWFx8+qdpX9q2X8QFMcaRS6J0=;
	h=To:Subject:From:Date:From;
	b=atkb2aGYFHQyz+GM07SW0hoSzCrThwF77K3SjnPzSbx8nZOmVPl5PS+5BpJy4vYvU
	 qU9qwsdPo66owsR/WQzLGBJgORLIqbmtMK9RsFH58dDrk1deljC9rPCyWqkkz5tbSn
	 hv33DG6Xv6+u0cEAefeAvQ3MLPtaKZMox5jO41zTkq46+Aj5J7gH7Wl1wp9kpkZOnJ
	 bjo9cugKOzYTdGzxMq/v0KzFhyJawzZpIdUWc3A5/gOojY8pv1DGQVQGeyEASSbcj1
	 HyYrS5uizHp4Rt7mqFIQsFHnx5nzRRUGANs18Es91DAzp8sUIjlQehrBF/hIF7RkGJ
	 QiIpFve2Y0BGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5E6CD37BB
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 13:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169486950870.6150.12730326101110971960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b473ab823df5bd7488b73916d3d47787dc311398e32f6273137997920e2bdb85
Date: Sat, 16 Sep 2023 13:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694869508
