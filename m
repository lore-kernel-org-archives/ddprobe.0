Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0686C2F21
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BC9C433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673272887;
	bh=/PJW1niHgcugjnEnMoFokUbmNFqY1FAMhGPF9cMMwWI=;
	h=To:Subject:From:Date:From;
	b=VKqo8oa1m4vRvbgiaERcecO9FZ//muedBCBZ2cJgUW8QdFspiXJYZ698G5lRoqK+e
	 wKAkh31TQAjkcFDHDVQx2Orx6vhU3qJvrOIedZU/mrvcR95IUmMfxKTt1oUkrp8WFS
	 EJHxRx1fZ0WYp3YJhB+u3GODZ11ColQK9pmmO82XGTCsZl/YQJMyo/K09/iyDwdk2u
	 JXNTjm4wHBgDCA5P/T20UhUx5g/a70kNuqTNzUU/CH8QogSu2BRp8hgcjK79viKQFG
	 oXeSarXvLSExl48+9JtaEU7P+Zyo+7Ns7VHgjRZD+pEwUqBb0xmIRBVXVG0kgMSBt1
	 hlOlDx/gG8RXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BE0CC54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167327288749.17677.2770746197666010386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31f5758a394ef1bdb2b05ca86a76bc1c9c19fb430687b237d418dc6f986e4a3
Date: Mon, 09 Jan 2023 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673272887
