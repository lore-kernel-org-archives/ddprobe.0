Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3B32E0FC
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 21:29:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9759C433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 21:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686864548;
	bh=Xn1ooUnUeekj0Mbbb0n+wi9t3rSymqNEXS2eBmOD/cA=;
	h=To:Subject:From:Date:From;
	b=tFs/gt+pbX341/b+NguaCtR6Vt09EdC/qJr6Z6mzds2mt2nHOTsAdEFeEZfztHvrh
	 2yHx4K9Q6G6Xb83AXiGz3upV2Fv/8ytpljKdMU9tEOTJ+e1a3YN08e/3QSwTcy0btU
	 pF63gXfxn61blZ7SP37jHHKtFO2eVVatUn4fqlCxcKujw82z3KRr9UHJaPZrKpktYL
	 MZyhreRJOgCfyRBPPxQ/7KcV4eBOVTdouyhL0KnKBT/2nP4CsiSh8UtHu3mB1k7uAN
	 jxfNx5ITq8wQXNTKLezYhv33UQTpm8/N8aiZxALnAYyQCqfalNzI0YC8NyitH1hbmO
	 Xl8psILotp/ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5BBEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 21:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168686454870.4992.16209142429619040219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c496fbd4ef108f03415de5508a6a12a8fa97069461ad2c08fe30bcde88384d0
Date: Thu, 15 Jun 2023 21:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686864548
