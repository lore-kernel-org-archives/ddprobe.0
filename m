Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E9717C5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 06:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77335C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 06:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661581252;
	bh=bXM/e9MYd0tQ3f99PYHg7rT7SN0bNzA6uym+QAfNopk=;
	h=To:Subject:From:Date:From;
	b=R1OZnixbG+kKuztPtXBAq1KxnIvVvzq15CAlrzk7gH9lprct8Ivs/8eOI+l/aS8aD
	 gK4SD0hG75vuSteX5X7cu8IhBF67V1WMCH1CQSCC6trL4Ix6Idi4Z/3RiMAVrAsKpw
	 EtV18N/Twlzqb3yTZM5sLiaHO8Lv2rG+dNIV6TbAfgnEqS33dpWxPKU1YYFNAhHCxO
	 Jn5haGgK8AEhURNGAYNYjxVVqfUJHsX9XXtgw+n9QgVpM5YucaoCTSuCruIPsE65ba
	 iTfIRYTR9A4e5Gmx9yFY1IxhSf6TNg1B13XfCBXbhXIAjlWBrTTcpyyZcHY63QaIDn
	 GxNYNb99ety7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B9DEECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 06:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166158125234.9238.1806721562168201814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d47eb582793f5937e276cf983663248d584c19f9443456046e276ad66685d2c
Date: Sat, 27 Aug 2022 06:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661581252
