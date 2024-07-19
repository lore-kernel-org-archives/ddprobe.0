Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73C57347E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721375753; cv=none; b=SPgvTWOafTGVx02ydC9ottHTARXYh/yHCWb5nOmvuCdBQQVLePq0a4VSOhHW/ZpfSKT8WSvDt8XGEe4vyOZFy0IEj8wiSGup5Qwm24hru/MiWtSULvkbSRPpmGewMPMwPDfvA3RyYoF+S2Fvegb9+dohem0Y9xDmlthSYzxbFmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721375753; c=relaxed/simple;
	bh=WV1aAGjlAbLQXU0cPVN6rjLMft65PDVw7chqVxiAPLg=;
	h=To:Subject:From:Message-Id:Date; b=kYj4ErDM8A/C1ZrFYRIVrZsUe72p+m0WxF5Mb/YnHqjx/yVQIf1Vc3uYky287Kw5oXQtH4Vnc6EyHMdRMgvGiNe8A9DDOASDSm1ZiPcIjQYN7rA9mx2OJf3wKgR+6HBoeX3E9xhZPhsbIVBfi2JFMbkyJTdFf81pIwGkuLM5J/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFEdkABf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFEdkABf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1150C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721375753;
	bh=WV1aAGjlAbLQXU0cPVN6rjLMft65PDVw7chqVxiAPLg=;
	h=To:Subject:From:Date:From;
	b=jFEdkABfrmpLd2x+p5HJ3vUadYrBG9UqvtaACTv9JJicnqJy8QIi44h7m0Ck5KxKw
	 Epudpith77RsVfxsxCjyyfXyNS674HuO7fMeCctqQR5TpS/o4YpxL8NA18dO+BHvkJ
	 nj6yHf4HK9UrOqzbFyaOeMHAvAG6HB61ngo55CUaAdZDh4E7wo5p4Tp21hHV/eUKFl
	 gs254y4biT5/FRBP1dEGWeQf9zqj2KZES9dJwqMC+9EM+W0zZskrWgnzpUVtpjpypy
	 Nxbre0dUPn6t2BIA5+gFiMUkodIiOG57/OPTOTJu+rOuHlZ/n/wLve348014FWl0G3
	 SGgXTSBdXHTHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F549C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172137575364.10411.15018498070461054715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 181c06568eed5ede5dcc1b3589983ada875eb40fddeee95f936e452b22ee6cb3
Date: Fri, 19 Jul 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721375753
