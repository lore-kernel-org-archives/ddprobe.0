Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70577B
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7339EC433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666532453;
	bh=4bJdAoDPTdw7pxihxu+sAj//Np8LzxdPhY+dkDoqN3A=;
	h=To:Subject:From:Date:From;
	b=fEd2Pz1V6LlG5dpVNSlWsxxRyuHfbVHOIamlsMk4qWTT8atWU5nHQ0y2XrhwOJ5Vl
	 b1hGoxhVeJdRDvLUfxVeZA1YHovgMRWz6X4Kg6toWAsNLEwyILGQVbShmQRMOKuTvq
	 HUrt+a/we4nGKLtIVvaG6trA4kj76JCl+gWFkLFIq63ExS0XVo8Yeg9dDbvm/QMJbM
	 4IQExtmhKpobV79yfHyRcAGBT6NQrq0nhRWXY22KLkKpn+I/Qs+X4NkB8YSILZo3On
	 U1oMFC28JMdBS86yCEXYC2+oW6TN85M3dkPHdn2jk4b1JvOeFu4xR81NY4A0xTekNa
	 1oVkRLckMLpEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 555E7ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166653245332.9866.13172595438033588509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb624dbe72d2ce1a2f30e1b0f4b04f5d67a9f60a7321f1565da154725121c02e
Date: Sun, 23 Oct 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666532453
