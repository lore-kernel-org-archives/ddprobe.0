Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D469723A2
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 725DDC433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664604053;
	bh=Jfh32ZFTCnDrEHyvUk4vl/dgM5nRJK4mra+1yb4sGTQ=;
	h=To:Subject:From:Date:From;
	b=GuM4IYKjMWniNpg6O6wm/uzb3XBT0vm66AJcrXElm4Ic8kyZ/C0ndgNEvnZr7ij/P
	 e8EHgmS6zYdRtXOM+r65vNp1Agt9ThJS0YGVcIDPvNdlj86dcMJkQIt+/WtARRSdGl
	 Ap1EKJX10sR30UCrhvNnneFCTRov3odrOiKrZo4UI8BXFrxeZRt7P5MnYIUkeeGjwz
	 pGArAC4aNt9H6vk3gA5ukRMzFYqeZC3t4PJ3w/+419PqbBSDiSkG1zOuORsXRby3ab
	 HNCJ01lcZvqxGuoCqIFFU2wdqyueUuKZ9Ikdu69YmmTC94E8I5m8xWpskOyBze1elv
	 SLKvUjiZVGgTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58EC5C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166460405333.23755.5955521027937095695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed00d1c23fa316696373a29ffb03443652fa4784d183f924593844a91a118de
Date: Sat, 01 Oct 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664604053
