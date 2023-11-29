Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F37D1DFCC
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhhIw2Z1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74551C433C7
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701276496;
	bh=Ap3D+6jenDZVJDvCrwVH1pTAl9i2xpev7CrjGS41DtE=;
	h=To:Subject:From:Date:From;
	b=LhhIw2Z1voUkgIzXEwXB6k7BtwxbGF1wbCb4tabzIMY2s+cmA13TA8MvF6qPEyfWT
	 mGXVXuv9DXjo6TjpdRGLgnkLnZ9QHwBRT3VRH6m+xRaW8rF620NzSrh0lC8bUW6L6L
	 bPuCKCV6Y91lhfg7gCHtmg6n7RBDnH77uQP/9NidXnHZ72YnKvBYIQvW44BkeroSm4
	 2+QOvyrE0fCJ4aNt1VhS+wD7AMZ2Hu+/+a1ir1Q+Eqd9nlzFzGZMBtOyT1yvSkkGy6
	 BbxufY+W8KB7UYbRVJXlKpcmx2cQCs1PbSOIZvN7/QcWWeP54L0oE2f4Hsbrkol+Pa
	 OFhUMTF/uSD/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C36AC4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170127649637.20197.11288647826045889481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b594d16f7915a40557c24ae8c299eb3df05a1eb3dff3daf99779824aa2cf0f71
Date: Wed, 29 Nov 2023 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701276496
