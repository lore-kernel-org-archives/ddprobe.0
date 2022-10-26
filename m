Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B28C71374
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D5DDC433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666789853;
	bh=6RzIRXkLOnGdS6GA9uXFT3A7NU7NzKt+2uBBinUvZzg=;
	h=To:Subject:From:Date:From;
	b=skX+3Y3vQfO1/u/bukGdRj3vpHa0O3P/fT3pTwhlSODkCN8WxcxAmc9QDm33TbdST
	 iRVLNzQWnTonp+KQtKrZID0u0zk8GNWtJ+ea/Go0PUGcDBvBgf/+GufisxYMFbh3ia
	 Eco7tyK0Yk9Y6gmSitJVfwa8EI50ERriyGVOkKtmnLnr9txJ5MG73kAyTNjq4SgKKP
	 STh+5TVwLVwvnCG13MrV9k9D3O0RaDsMyZxmnMrEHuIPd1a9dSG7V36ZQ4CoCVdOHh
	 dOYWxLiv2fFkEohTTPghRqNqDUJ8jEVKowmct//74ZPIEkVN3oMOZ3DhAIv/TLqOyb
	 C+5vCgc8JzpPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533E7C38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166678985333.9550.7493128525685549190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d6271a98fb9134e2ff6d994b3f242ab312291139063a29a255635d479994d63
Date: Wed, 26 Oct 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666789853
