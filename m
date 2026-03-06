Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F8D4301B0
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772826894; cv=none; b=QrpcU1gSb2YvsfNfgi/dbgZZ/C8WD17EE0YQMkSvxKn/OOyAcPmsYiT7B+pz4T07A/q04kh7SdCZSwecn4u3yPvigWwtle4u1D5yMKQJYIWvPZbtOxbk55hY75RDTz2fa2UKtpvAzWN/DWAyjNZaDasHydR5CPR6Ex6qFrHzA1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772826894; c=relaxed/simple;
	bh=xi2m9wG14PwpKAuWZ9uyHcbrP3w7Q79gFg0UqQJsIKY=;
	h=To:Subject:From:Message-Id:Date; b=IWxQ2Gp9XnGrUr/D76U6F09kEZ7kHntycKsDAOayoTY25eD7cTEjgtuRwkRbmISmOu0sU9hlKiXdYyH0Yas96bye9oZouY9b1AItQAlyDSv9OkfqlqIoU4CetLI2B0FedXtxCQJ5XbJFl0dKHr+9nKmke5xwRzlCIm6g3m49LbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZhjwM1JE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZhjwM1JE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC644C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772826893;
	bh=xi2m9wG14PwpKAuWZ9uyHcbrP3w7Q79gFg0UqQJsIKY=;
	h=To:Subject:From:Date:From;
	b=ZhjwM1JEKUFRFWJSZedkTf2GDWRmaZwkcKBlVupnDK3VYfZHyK2qaJaRGxeBPyhwY
	 eK4xqp79t9fSp0MrbBI5uM2jboC6KxBa0Of2N7GK9bRovkECyggJUDjXWDkGGVMtdE
	 d1AMi/B2Gq+gvA4lZmbgqx9AjlqpXMaRsRBT2m7ErJ3gjiSnFG13L+Z7tBRZ/arTdK
	 F9NorXNVbgEEqPah37PUhDpPpMlFyITleAE3hz6sa7vBYCGS9LY5ELrV0e+vzHumKt
	 MaKAhTgC5Nb0VRFoeVkTNPWSA/M75K4uYCQc/ILX/haoV50ETARBBU2ZylL2HM433W
	 jQfkbkfDea7zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6DBFCC066
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177282689363.3073.1002032315689862189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f78a46742cb89de9c5298541c839966b6579dc9dea74f635e0ad062f7a24cd
Date: Fri, 06 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772826893
