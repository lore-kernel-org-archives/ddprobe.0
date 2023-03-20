Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BBD1846
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 10:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0E0DC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 10:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679308626;
	bh=OrbwqLikABGVOqbiDjOc0Ac+pU2awzVpppG5l/QftVg=;
	h=To:Subject:From:Date:From;
	b=CwMcCxKPETQqvv3IrPkT358watA5O40y2e23yReRYTkVeP0gZW/aje7tqonc5iN7w
	 m0t90FbhlfgWKEhRrKYoSFg/W+BtOvSFJzXdWVxy3d2FrB+DHvEDTLp5yWc6VZ1L2+
	 JsqsaxkW/F8vEUF/LpiYIask1qf4sr8Rbmlh8gsdoYGLGp9smE5xDPofEkve8MiH2d
	 5MTPhAW8s8tYVsu9ytxpNUdm8Bxu9NAfKiaczNoTJV99Jf23fsXNvTTzgc4/e33C05
	 ikcsTG6y70ut4MvFkfOlbXWXP71zX61uDQUUqpZzp7PzHNsHN+OPl1n+OXkSnSJiOF
	 xhO83/Pfv3d9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09DFC7618D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 10:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167930862577.23900.6318500267930951801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 083cb96a890db73868773e8d6917ef657def7dc5002710c0c053ca170024092c
Date: Mon, 20 Mar 2023 10:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679308625
