Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C64010A0C
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlGjg9/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97CEDC433C8
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698605896;
	bh=kljO3PusOcvTuK1KthtrCcYQo13UL4Mn9YHU6BC00ew=;
	h=To:Subject:From:Date:From;
	b=AlGjg9/Gq1lRG6VZjW5hMu4/2P/1NzyYWUA6HSEAvUsRcZuhq+NC8EysASDwR1QcE
	 PHmm5lb5ZbVmd5GNCY/DTnqT9TUuQif4rRwwZopB1hclB2F+goaHEcpU7qwTvtPhSD
	 Mlzo7QXXvkogph81qBWcMHVAj/6ZsGs5sogH4hENSjjX+fzdzowO2YU/JTxBSkA21V
	 5Cqe1EeeNBIWQEm/2mDQvKopJzOKkuXSYoD2nEzm8C4DooCpBJKEIoCP9awLHieilX
	 z/J0P7o/0ovbbuZkvrqRBJS8Ykj0Koq4hJrfAxpQ5ERoBSZicmXZ4pHwN04akoh5VE
	 8MlVPuGiQbaWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7875FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169860589645.23545.5574317213396684670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae4cfc51bc3589d8beb7be0b6b3bd0c4d7096ef860aa87617de03ca53b5366f8
Date: Sun, 29 Oct 2023 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698605896
