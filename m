Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78F6A28
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71330C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669941054;
	bh=yjqdXuhJUkY1OPvlZKTEFFtk6fG7VZZZeyyc1Y/Vpnc=;
	h=To:Subject:From:Date:From;
	b=JecssCxIFscuiDqUMrNlcAxT3kfPVAdhIw5zOuedUX4G6ZPSniuQEbkPbmhmSKlXa
	 u1Gy584TyTakjsxCSQEnTFKsHGwYkhccsRlOp4C3gV3obNsJPoYgxGMXokyqoOCrvC
	 thEE84vgea/3e2BNIR9BJWD+FTJtOjSpcLKkLTKoOrh01P6mjfvhnaLP3yu0N6PGKk
	 /KevpgiLYa7tEBVc9fTaAYMiHVmaPNVs7M8n44ysW5ool8m3m/nk4OCioIRRLE4Zc9
	 99guVpWmrT/4igquSyuJkCxYlIp7cNSVwKFeOoNW5U70qXYNIpJfOvHao/e3+9ntFY
	 1uawVwmuEHZyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5461FC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166994105433.30742.16965151026648958191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbba6b4a36ac5cd651c28f12ae7b016e9643699a9d6a309e4735d0df9bac549b
Date: Fri, 02 Dec 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669941054
