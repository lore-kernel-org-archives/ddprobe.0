Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD7D1FAB
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 03:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A72C433C1
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 03:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667706654;
	bh=3hRqwMaEUAeXRtLmnCaVrpVtyfGGlm0m/KD2UEDJQ74=;
	h=To:Subject:From:Date:From;
	b=D/8IL8xKd7GtL5wMT7k6S5wavwLHlKqWB/GO2PGuYeAkvzSQs/rX5SbrArtrpGEpr
	 UUzkqtneBM8uGpk7xxY0cUH0xANvuotOILvoQk6QYkP7pTAHtKsjYRuPkPVAsSqCRn
	 za1E5vLV1NHJ7wd++FvqUPVXiILmloOGMDYe4cxGP/5ptf5ZCrTtmR/9If7/8BSLzm
	 VTgioasUOCxCDpHDWBHwK79T+dXQkxjwZRoiwBVAApEJ67EQnpU2ra+TEbfZieKtY+
	 FPorDwSUcOpKd3ywXcVUAQxhtRE5ve4Y7kz6epnztXOm0p/TYlmrDnDh7kK6qNNVez
	 ZqpbvVS2DHKaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E9BBC4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 03:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166770665434.19261.1100722814609585531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f000109f90beabb5bf25619611d96c1d67857c8c358c2da8409cbf248a131040
Date: Sun, 06 Nov 2022 03:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667706654
