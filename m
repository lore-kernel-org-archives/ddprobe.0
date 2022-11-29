Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5E157C
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 02:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 652D3C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669687254;
	bh=uwExvRuWRqvuFswR+hYqMN4oKGF1il0G37o6Tevmr8s=;
	h=To:Subject:From:Date:From;
	b=i9Pw5wd2oXPoLNbD9Azo2FYJpBabzXliQwqTqZ8KUvU144O9M7KAWW53bocTtH7jT
	 BDXqMSzpLHnlOEXN9kIQlq7caWwvXYqasWVK2qqvWmWhF3JGoSh53z6i1tNhWO68eP
	 WBnkUiOv3wgw0B7E6WXj3O4JCmEwJ2qmc+qH7pXL3aJtrLa9f1spY0DrvnnaLx4B9a
	 fh+8D9O9kQWnCtllQH0GHGfod8OFiMC9bSdpZVESJurT9pG5Ex62bHtJV7YDFiEgY1
	 IoMvJGtEokSBlozmUHLzgbf/Wvs1iMnsXMLMpyDGTxecwGR4ey3zbQiTKQMafdiJCp
	 2OL1ylLx5yWUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E166C43217
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 02:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166968725431.30527.3784722379852004540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d2f863699ed10793305a6b0dd5ee219db7372834325deb5303902375643f0e
Date: Tue, 29 Nov 2022 02:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669687254
