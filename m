Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF07E33DF
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65B5FC433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662307853;
	bh=gJ9GgAAaQ+Y1eOJX00BVKAGoCKLWJnyQAiWYxCEI6gM=;
	h=To:Subject:From:Date:From;
	b=YS4jUIPJz80vOTySp/SKnQT+eOn5HlzkGadaZm+wQTi5pGQtpjRormm40ibom0nN1
	 4jnAGR22eiilH+uLa/RWi68vP0WkfFCAEGx/qWO43BHSLwVWtybsxnxhb0Kzz1SprI
	 t6sfQM6biTTOAdoevmSPpFTY99tIjbF4Imtywqe075SC2vcKRMrVcB7IUEQOADhHF2
	 7U/vjFtzrt+3BAqJkjAcmJtvSyo+hl5ds+sUggaxVYYx7Y8MBbCo2uuTNIFYuPRJvC
	 Vn7UU2Q5CjvDB7o+Hch0r3r4lRxF2H0p7wKJK585PBkd1RbGfTILcE2+WlnC0EgQWR
	 12Yxgs2ZOt2mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FBFAC6FA82
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166230785331.20337.4485471413229130104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec0917db57083ba966a49e77a961ccb584d5208fdc33eb3ee166cdab345b769
Date: Sun, 04 Sep 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662307853
