Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE267C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CDF1C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662632453;
	bh=aUOmWatorUPb1Eb9fFMqEEU/+epr5y91fL0em5O91fc=;
	h=To:Subject:From:Date:From;
	b=VPMnIk666+V8oX+vdW22e4lyQ4fjI7/A2vHnX92xYgcU44z10svWKMoJjTDPq40Fz
	 0LC+YNn5+XYBxrEC8cQo7XP/S91Xg0DtD8adeSRG7Kklxv2r9MxsP2SBKHPCyT8JC0
	 riE3klw2bT0UUM73Bx1mKsZhxCaalBc6zkFVuJWLCaS1kjKTnlYGa0SNwB/JmSlRv0
	 wFxY+ln4eSyEmd2O+nWxjP+L67FMKcCFAinjeBZrf41y2OKiN5Q6HKSZEMWKef/sEd
	 mtgzP0OYdMgWMTcxab0N2X54+d4xy6A1GUZKroPj7CkLj/FkvG2BO5T0vGkLhZ0pkg
	 i/oopQxUi2U+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55119ECAAD5
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166263245333.7926.6032331776772235946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad6426b1589a85e047de3bcd75c6d783ea09fae3f928b3c459488a8fa6bfda5e
Date: Thu, 08 Sep 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662632453
