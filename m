Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD2387E6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD65C433D7
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662762653;
	bh=HAYPJLRh9zCOiTdAJlhWZ8KwxMvKWPiElY4a9qXEE6Q=;
	h=To:Subject:From:Date:From;
	b=G0AXLVZ1AV8Aa0Xb5EVbYugKS/DbJtf2pV/KZY1h1klTsVWjaz6lO8EQ+4PG+/U5k
	 0+hjr6eSolMHPVz08CcJmLaqyPXtmjt1BOWojwVnHHPUe1VuG2ev//ktBhuBS9y8xH
	 MWP5RADjP9SYHIXjT4Bw4j4SDJUmA4AdCUEjT4FLFHnZshEp5S51Nx5hOb8XzalwS0
	 X+2CFhWdlxfCYl3BOX5t+us+BZUNHnZqdhu5SZpIEVYMTTkp2jDF8Ecaw4J4Unpfk1
	 aR0VuKZwsCwYDAHbV7uF3MV7kOJXphjVWP4yP2UYUkQV3pQ5aBnfbD2G4K0t0aVe5K
	 xqkte3szUmn/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 544FFECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166276265333.10901.14891518818347437834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff04382cdf3f42dd3ab506be88ea13a62b3f10e198c766aca85038f8f1485a2a
Date: Fri, 09 Sep 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662762653
