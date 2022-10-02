Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1BB5161
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB0BC433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664685053;
	bh=FIlu/YpgphRnxRRbLuI/ieTcGu6vnklig+DbDRXdBx4=;
	h=To:Subject:From:Date:From;
	b=NYsKLDfo40RqVA/kTCu+9QQAIrwGokeqoA0BQGskHVfilF/Gi0AwulEKExNvKmXSq
	 FZ20bxl2P/arVXLZR7lN94G2WPQ19I+XD+N0cOEoboeKiBLzpAak4OKxGP3IXR3cHv
	 uh2ZC9sXXc9waR9uMaG9EzgKRc+4IX874le+cjHTnEEdMO4Q7Mvg3CUe9KNDxny3Ip
	 879UhrAsv75Ny8NSrZRZW/SiiN/q6ujXuq5fEOdXDwywPYJ+ZhHJIoqcIn9axKU4nP
	 48HWLdfIastA4lVLCIEq6yhpgecxOIzAkOI+Ys5w1FEpgOcuXqQCGexVeJCjZVqIuI
	 IRAEO72Jdn/9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B67C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166468505331.24853.14036759270826299246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44331c50925bb8762293176fccc3d745b8ca111d76817074074314f100fdd3b3
Date: Sun, 02 Oct 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664685053
