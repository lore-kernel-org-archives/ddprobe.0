Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4997B180
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 00:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C965AC433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 00:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688861228;
	bh=4sBrPKaZr5WrbJvrrV2ku8gCFteVT253R0z7UPPAMgI=;
	h=To:Subject:From:Date:From;
	b=MaEnL8rgFTYOgVJGjuecCrmEjDAayJ7cNKWYBMHRNvIK71DswPaELPl64mxi193tZ
	 FDNa51oPqHNreY9C/6gnRvQ5EgXEqO84YW1D3RdY43Y2DPItc6S5S7SXMNpu4nJVea
	 l+s67rvkI4XtWVOAYahfe/UOEyYd13lqHTTXw8XLQPbuX8kuXH+GM5xe0Wy6VfXJ5s
	 rj0RZfkWYy8LPo7oNuDfwKjdkXwTTjMrVB0EVvO+rL2+pz2ItcHbbutV1C6npNqlFp
	 gbGFIJk5/NQrxDk6zdU+ed8EqcnVPw5VD8wNDZE98nzsOjEmj7Nxw0G7OLTn6/WU+x
	 H4z+fpm3PkIlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8063EB64DA
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 00:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168886122866.26755.2978137502255823230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 716e0b8138216a0bfa6e2246972cc18da8c80f91db13361876950b81a30b55e2
Date: Sun, 09 Jul 2023 00:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688861228
