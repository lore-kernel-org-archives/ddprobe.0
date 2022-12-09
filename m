Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E62876D24
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 882FDC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670613687;
	bh=fWeV0R0MY33U8i+7hcLO1j9fYNS5c2jymvzVh8XKje4=;
	h=To:Subject:From:Date:From;
	b=ZcT8srOBwxgs+zwM5BmZ4BuyQvuAsHI22NVFgpV55Rcn+p4r6gOeXwdq1JYKAFDSD
	 lu/GlLrOsAMdSVMtOxm+DM7tu9Gd0LvU4X6PI6/N2aDw1R1btI3J5yPrRlQ897myY1
	 sekxaD/znxtSjv+C8hjZQqicpSNEmvFqWq6rqcXe4vX18K5s0lhcqQcSodTjsCw40G
	 Bi1l/dmv7my8vCQ9msFii4wZ/dL/VljLa2ikuEL25GObiiMMi0bNpLB0inMHnmzHfd
	 Rpp2z2QqfyoXAwQeN026dBNH32lSlxn6TCwKye1Ier9UPvJ4ZoFdJMeF7gqxn6l5dN
	 T/dPE28xixrkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D17AC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167061368744.8668.9591589443868326894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d461f41a814bcedb56198a85374b04cd1cab552da1338681808a0bb29931e627
Date: Fri, 09 Dec 2022 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670613687
