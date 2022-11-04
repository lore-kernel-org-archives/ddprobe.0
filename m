Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC51CA47
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73348C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667524254;
	bh=SIJ9R2432RTXdj3YN6IczrAsMzwIarU9NepZAhn3K6k=;
	h=To:Subject:From:Date:From;
	b=h7qEsjtiK+1iNbiJnzedLi/GtBjcTVfVfLNnstJNWU1EKzGe8/O6tUcOjHzujbB0C
	 NWcEkRaojj0+MEHQt7QXHX0zprjlSZTt3PffTZ/g0T5XRJMv4HgdmP9wPWm1IIjlfn
	 6TXwqdlgLX11mf1yzut4J9iQV0uqoOdetLDmXJ4uxJWLbZcLudYnn6rMd0wHef+2qz
	 bS/h9BWB6IsruKbtPLpHNuG1/ElPT6MbaHB717e3Jw5Gum1lxUAwbhXvUOPlx+h0kA
	 OZ6WPkoaJgUdAn3xePqz7flS6DDN8D4TsDWUNHtDzyGIvwPx35Id6liT2XHlBVdDWS
	 +4kuvPG9mMoXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C5DCC4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166752425436.24787.7584589889753234747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f219442fd917bf11497cf7685f65698fade21d243251b4670c61bcd5f7f753d
Date: Fri, 04 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667524254
