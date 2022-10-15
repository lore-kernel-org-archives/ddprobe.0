Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFAE3363
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82CE8C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665859253;
	bh=vLSbb1pbUvuw/OhNdXWHROZ6J0pYulPncReMZia6LBk=;
	h=To:Subject:From:Date:From;
	b=YdZGMm0T0FpdUWeL1FXW19u72J4kk1OfxadqO9Izk+Du80fAHsNDa7FhEw9KJ0ps2
	 E/C/PXIkUy4OELvu1cS79ywiBlOGQG7IBoHMT5fBUf7mV5BHElApLk8b9ePdaCVPfm
	 KfQOWwzcbtOOOZ6bTmE3To2e3ajOcrGNtrZScZlcw+jm350i+rhJNQyP6DmK+BawAv
	 Bcnl4neLm3+sNiD4Q2O4pn5IM1EMLtJGZKzY7vCZQrv5qjbInz+1HFEIFzchNCAQWQ
	 oHcbY1tj8Ejy1G6qiydV8Xd3SkiKtp84yp4UoRHs3SkqOF4lXEY+Al7uyQBFn6lKeK
	 6R5KIHUc0m2vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A17AC4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166585925336.7800.17910430647294475846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 332657b40d5a910afadd116ed8dabca27ad8534080feb67e67c61b60392634e1
Date: Sat, 15 Oct 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665859253
