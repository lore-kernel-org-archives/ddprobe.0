Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBA1915C99
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70FD2C433D7
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667863854;
	bh=49z6bDhAxY04Z/ITHeiZe5u8kFeOJoW4GsRxCCZBQQk=;
	h=To:Subject:From:Date:From;
	b=SyMO5bKk3y3UKKBWSe8a9qsaAjaLIM4+3/2Ycz036LBQ1Tl3Gl7X/Iv5jHJiLcrLu
	 wv1Rud1RNvCKohSd54b824aVh31BH/6stJD1Kkv0T73yYX4DCgsXvGSXJRXGWNsvN9
	 IiNZKDt/51UK9A1Q7Q/ooZ+Rs/mVLr3AbKVVdQxzL9O1+oa5RUSbItTTFKzveEGhrv
	 VQHAgqXXPxKkkf97gHK+CPw7akthLCaVz0pViYGAezp1488GDJr8dY/Pckm09dO6hb
	 G2qgpFF0h9ZfY4tLuafHYi/mfmmNV3tAFTSghMjJZurdX1pCLL13P2Bq3OWKM/VpaC
	 f2ZW8s1RM/h/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534AAC433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166786385433.708.11516886271123124405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a5c83a1b122e8c8280df8b385895a290aa991c8c8c880d9ffa05ca5198eb7c
Date: Mon, 07 Nov 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667863854
