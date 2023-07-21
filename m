Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6794562E
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 02:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9329C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 02:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689905528;
	bh=Dnpvn8WE6ZWmpySyWf2p4kqAGNXLTJe1fIlTYp/3ohU=;
	h=To:Subject:From:Date:From;
	b=dU5dKYtiKyOtmsWp8RiGRyL8gRr/aAwydj9c0qywa3xnJhvX+dLkg7Du+MmDqtPr+
	 JHY7UqROCjaFZWEoAWQatKRU/bjmw9sF67EyjUkXePDkDGoDEcFX7uVoQkkXazmD21
	 W14zWtpNPfG/7pdC38DWRYcWB8sOsqkm1olQE3MB1697S+AsOlk4wHyUqRM+V6IxnF
	 qYewPpoHW0nE2qEzqE0CxmuGgFWww5TnFTUDW5Y3rEQl35G1OhXUjl3XkhEPgioPoo
	 RuDp7dK5qZ7TlVPEFD+iXWctE2ukFh4kWHkVVEsKoMUtt20EZB5Re2HZN9iiC4MT7Z
	 gdvaN4Q5PS8vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA588EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 02:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168990552875.27604.12205700434495310898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e36013e8c9c90a5257c6e43a20f92f6f69ac37a54f0c5233f07b9f0ecc40680d
Date: Fri, 21 Jul 2023 02:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689905528
