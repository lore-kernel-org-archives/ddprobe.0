Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4B06629
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E737C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670479254;
	bh=1plN1s3QdlVEq9RVPX1i7tZegYTstK+53HCd87WoVpQ=;
	h=To:Subject:From:Date:From;
	b=cKJyQvQdvx94aVRA95P5kvioUiWgN7NnsaJzGAvhlDOxm7HNf2s83fz5mpF1AFqgE
	 WXMoGTC9MbwKzF4HbSJDxAa9co0L/43XxuUqZvtL2C772Bn6slNodxkAm6o9lq2R2U
	 +P/U1IaDuDP6FZ6+P57aOfFHsysbmqiVtw5NhbyH9MKPsnL6A0EOdlRihQrBJIuV6P
	 s2T0D+xK5/V2d6ozQHBYKoZYigifQGxCoBxL9QVf0DHDoMOy6qKxLJydLZOnFY+vNG
	 AFy/C89cjkarcK7httg5OKM5G6+QdpsK7n5Yzh5nvH2i6NKnzgqaw+jJWYOEH1HSes
	 lrT2Cnyd3e8Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50BAAC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167047925432.18722.13953552988325866374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ac8e753513477b963c74f475ccab8394396f300bfa1c36c10834d4c3929b88
Date: Thu, 08 Dec 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670479254
