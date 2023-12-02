Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236042F44
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fY+MVbHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8163FC433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701526096;
	bh=tNEJO0gDxAc94Oe6akYXdfcxoknHCOVHj/xTbWQaRNw=;
	h=To:Subject:From:Date:From;
	b=fY+MVbHBpCd1X5JZDRkeZolPN3pndK4ZYXguoAa55NX+GjmPWzuT0la0DQOmyX9b2
	 b9tSHqesbv6WH2bwaFasFyVv1Qu7fQKPjq3y8HPvgsiZwDvxymfx397SqidDThqgRP
	 x7eggrIDnj0ugrPfIBRKUjQh+YJ3QRITgRkqHas5TYmp3CoUjoTKmnSPAllxVr2MDQ
	 gnmENcs9hlIp2XN6p473ddLF6H3Zsjv4rOYk4zpWhpEabSxrP2d932oWNrp4Ek7V7l
	 f3ImI1nuPtU2M9bsREj4cyVPBFBEXInEEedRr+raH1RBMDYMjs/CQo+jwxcZvHBfqr
	 oNTpNKGU6haqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6327BC4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170152609638.20057.12341824206907567948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f401187a1328f360e659899e3858ef28676f65718b64e50ae3727784efc147a0
Date: Sat, 02 Dec 2023 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701526096
