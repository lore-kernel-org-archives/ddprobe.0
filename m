Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E14CBA2F
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 15:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62BBC433D2
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 15:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685634965;
	bh=kNXMwJsr5wjTwPNV2AOtsBeZVsCgguQuSwvEN9Ffpfs=;
	h=To:Subject:From:Date:From;
	b=Vb0jNEM/cU3/KCkTFJXRnHt3FePcxY2Q2jCf3asbW6ojGhggx0sHd6qNsjQpjDfCT
	 AzHSeNlBvbkCnN4y1pG4pm23bBxkmU1ET8o0p4KFq3XhfRdzLlxPsgmC+JcMSBJfK5
	 /oGu3OBL+hLXGHBN7azyRbN4+CWL7z4Xt534djEPT3Ij0z8uhxMCENBJ34frvtxtbE
	 iROneW4VKRE6BWTuvqrlaB/FYCSRVULB2v6fjP10NkqWvY5U1wnl18Xmco7cqgLMqW
	 JCR5rqosE+5Fx4jxWVyuiFAFyLVSVi8+OxK1KJNEGtUNggqZikDWylwYF6eDuvmX2y
	 l63yyHU2CbVrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB930C7EE23
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 15:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168563496575.7341.15384297834324561561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc043af1703eab10a5dcf3e400dd4f77c553adae3900c29e099dfad267396192
Date: Thu, 01 Jun 2023 15:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685634965
