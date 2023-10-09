Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1FB374D1
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 16:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGYtBCim"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD52C433C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 16:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696867628;
	bh=Zas7UMhluY8DKosDK4VNqdK5uf14n5xJt1Ie7FKs26o=;
	h=To:Subject:From:Date:From;
	b=WGYtBCimurbnErxew3hDnE9IttxLQMawF9ATBxy2MJ71MOm4Uql5cJ1uUDSQ8T1Jw
	 yuKaWmQFD8WecqEJ1gbuDcVCZh5WOP21G0MfbAcvQRJzofd6U/OcSrp7damnFMoCrq
	 U9+KDB7fuAuzenC9N4dY9meIHPVGW5wSysJlungJA9cSeYZT1RVabkHzx9d4d3V3qQ
	 Iktss9CIp9EG6NlUHjEVTYA/KhcpdyIVT3vZL8TU1bQ3IHRwuNr0MD89V6jX7sHNxF
	 zVhEncj6AfxkgDM43WALotCk7c6bnPZOpCMuYCpCjM8Y8n2fueNPUDUkHSOuZ+UwK8
	 WnviyZKvGJlbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF39FC2BA1B
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 16:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169686762869.1195.10921002149025937383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e336009093dc9a4b828d3017b04fdee88408d2612374f4cdc4374c79ee8a3de9
Date: Mon, 09 Oct 2023 16:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696867628
