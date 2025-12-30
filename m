Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36922AD5A
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767102234; cv=none; b=AMmxEJI5bHqxsRVDGdzkyoNmV8OP6JRIu7FXnxlakMtWPbVh2cwCoLTbTtejJ87++tszm/LSe6s6FKKggq2zOgtz3PPYCdBxamwTI/pT1OyHRkPYaCsh+ZWfL+7dvKMLu1Ivk2XBhKrgzjaoym6Jr8Pu5Mnt0bS7NgDoGSKsilg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767102234; c=relaxed/simple;
	bh=eU84UzEVMWJZ/zgoJO551o92WAKozNPvw6lvaAPRqeU=;
	h=To:Subject:From:Message-Id:Date; b=rrEhPtNphuEIMvLMrO+Jb9tB1CpfsZPu4jjHKfAMiSJ6i+krWHCWAD4+lxYL4lJPD56aQyK4hM7xadUe74lVW7/Jthx9x1m05MYv+GmWBRCdL3IfUc+CFj9KKiM9zKODsnunVV3tv42jjWlP3oc1g/D5D/9vtBQMkAAVkx9MS6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFfJNWBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFfJNWBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C48C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767102233;
	bh=eU84UzEVMWJZ/zgoJO551o92WAKozNPvw6lvaAPRqeU=;
	h=To:Subject:From:Date:From;
	b=TFfJNWBxmMem9jqinEcfDCFnc7Z2ILripWqIwInaXJeBvNBBykUygAuV8DIztooBc
	 w77pL0ndF23WL4+KTQibtdvg2jIkV36NwELIIDKYwOcoC9Imkw4KNfxXPQH19ZnEVJ
	 RRbTHLqsknBWcAdsN4jkAvTCvnq+oP3QR/Na23ufTTTLrG8jX4HIm25KFwEvGsLLWx
	 1dYESxPdoHLLQ4T8rH8RJF3ep5hWF3Gmcb5Eb+PNuGM6Xg9CidqLwFn/ndIFkJlFwA
	 GUYM2K0q0GZ8iCV53067ZCaYgHW3xI3jlDGG/3/udkA6kn18D/GimLUR9d/7wU7OQz
	 hr8KMe7gyvb9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9476CE95A8B
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176710223360.3151.5328049486605448870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc372c0ccaf55bd95f1d70108aad694e3839975ebe8f14b0161a91850eba203
Date: Tue, 30 Dec 2025 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767102233
