Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F481112
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 05:01:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00A4BC433F1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673067688;
	bh=TZwjCiA7P4/b7js9q1RiuR+k/8iEVQoUmfh95azXEvA=;
	h=To:Subject:From:Date:From;
	b=EJuHE43aKezS/HX+CCBQRcMbx8yfkMBL7q19vsN/3Oc41LB0NR/WPpv0JiAb8Ixdp
	 16qE24Q8MOEmpEZsnOONGkTtvJzJyKVmgaoOCc18gi4gVGY+Er23rY5vd6VOi7YECg
	 AQa7Gve+jKyTDzDvuL239534EWyLonZcM27Au8GD/zeHyR/WXS5KGadDeH0UKaACbi
	 zBN/meBWTUspke57+zZd77twXCKLVcWIKQQO3D3mhnuAmFcDmYi4lwV8Ch4PYd3HNs
	 xCOcBM4QCf5uc8eGmDqeRkj2o6MpzGZTlROfs4gX8CQTKpGPRKy/epRW4JP3CpvKn1
	 PoiaEkNJz0oog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F77C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167306768780.21618.4164139069558890004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 106d0d6393b84f4574745294b96d72500926d97dd9c2db148410566a8bb17f83
Date: Sat, 07 Jan 2023 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673067687
