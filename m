Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B323A1C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjGz+XvI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89F7FC433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702908496;
	bh=ppRoFq7IWP2Egj+5egk8FYs4zyPzF648r+yApKqziv8=;
	h=To:Subject:From:Date:From;
	b=sjGz+XvIrnytzohjweoNHBIgmPfMHl+pB5vATnyMnG8GKFlaxm+s/jlotxLjEmSSu
	 W7TiojtObTrbJU2/LX454XsUmmWappforzihwcKwBecEnNYsCBGYZZUSrQ2SK7aBiM
	 RyX4TCfGN44tgLHPz7pIBD8u5CtUB68QX2RxmdxEVUtyAfO/SID23kb1QOiukAFq3j
	 EcIGOvuoBfN5tLOfd0r2IZwh2mNejssG6xrQ2UW8/eYlXg/C/CGRaRsUCXrJwyfqQs
	 3kXXg4IYAsStPuvu6GD8KCsTRjMACWoe2alJ+F/uwU2MibqFFJ+P5FehfSgZKF72L0
	 FGopKXgtEF6+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E50BC35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170290849642.26010.3562055677979023597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59384b2cdfb83641bf506697d0b65ee5f7d311e8960d64fa349bd62c15b20580
Date: Mon, 18 Dec 2023 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702908496
