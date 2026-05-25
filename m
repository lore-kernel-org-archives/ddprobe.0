Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219ED7262E
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 00:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779669754; cv=none; b=p/Pi2t045G33l/oJe/PnIRiPuU7v4q+gukwTQUr4Jrn6VPo45Fv7ck4Sn/qplMSiJtzhMsSgiAsB0c4bdS5Ltk4eMBMyajUFPTYgZm7r3dzYDUs1yRoK79HPD4VkTC9IjihJvGmlQzCccwa4qZDixWjUQ66iFas/aUhXg42I8Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779669754; c=relaxed/simple;
	bh=ASBm3hW/X4wtLF1YZ1R3kCgje0ba6/n8yUcH/srlw08=;
	h=To:Subject:From:Message-Id:Date; b=e4hucCwjCKGRC1bambHtgmCPnPQ6rVAgtwkaP+hW6cGwMqKfwuWcwfiullTPMgLOwQ0cNQtj0eaIjv6sZSF5iVCrFsxUCMd/rjEOdsH6IzxN1imVsBfGrRKVmiJnx+s49IWNglIZ91o0+3RpQhiI2WQFeO3ZWy/ug23AbLOpYC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMIvBuP7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMIvBuP7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5341C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 00:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779669753;
	bh=ASBm3hW/X4wtLF1YZ1R3kCgje0ba6/n8yUcH/srlw08=;
	h=To:Subject:From:Date:From;
	b=CMIvBuP7Pbb1ruRRRMbv5iyJKKDvU0q+j6uyeb+Ij8nhMktL/DZSjlqnIcUaBoB2s
	 BCRePWHm/NC7TQgVF6cR45WDMNzDz3ZNH4AVljcPDU1tH/PbHhqy/FrEcIhHp7LT60
	 NsVXZAGlps2rXzptGzsxJOthpBCdPO5DDn1LZdsDbiS6BxErvOkOKWyUmoZ11C2SD+
	 SzgriTlmLOx+aTkIJSfEh48M86xVOeIHkWpyz5jxgX3wAtE5p537wKRO7noDSEfMTB
	 JsKcSe9t4xpyiZg13om9LkHm6ghv4vod4ypvkpHaYcCqG4oP98SqTxVWFBZ6Xjvwwe
	 NrOamr8wXRaMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBC0CD5BAB
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 00:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177966975368.19116.9001008334723447279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f66f7c7e35eeb9e6ffd915c225b36fd566c3f8c7d75332ecd08ea6058df8b060
Date: Mon, 25 May 2026 00:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779669753
