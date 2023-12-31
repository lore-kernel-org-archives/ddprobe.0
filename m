Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2553B819
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mhk3kqGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84BF4C433C8
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703986696;
	bh=5QqUgV4LgV39TaS4Mia+FQVGTeW7HN45Hz6SjlyB+yk=;
	h=To:Subject:From:Date:From;
	b=Mhk3kqGqSdFF7beaAQrOOPZvl8LOPd5iboi7igVSWn4DBEnQjtce2Z+ZHClQxXKBZ
	 S5JVUPlWX6/WO7QxY+5CQsHu3cYOdp4h6fR16lcTNb26MnMm8Xl4GP4eFFhtFJvvT3
	 mtLRcq258EQzL+40k+sPUldeceQDefYE4eTwr2ozPQOdQGP451pcCsoKY+puqtqQQ2
	 2WZdOXH5ug2cyoP77pp397bQg64LU5hx7cgXwx0tkY4q6O23ZvWUmFaaoBbhin8vtN
	 g3qMPm3JP2E4fQ0I++VNJcKNOhMOmiWcYfQNIYhIm4+EbgNEqnJmvfi7BTu20N7TaX
	 xgqkQTFo1Ebkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B6CC46CD2
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170398669637.14512.7462637582881049800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d4ad4a331cf8f3304ef9b651b36acea1733dbce333b577f90f30aecac2109dc
Date: Sun, 31 Dec 2023 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703986696
