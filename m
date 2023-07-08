Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 964427F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 01:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3915C433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 01:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688780828;
	bh=azwmFwBCqCKWwRS3hEBrgPeRDv6dEJLVR9ODar8F+wk=;
	h=To:Subject:From:Date:From;
	b=TcD9y93KejiePO9ePh5CIciVC1qdSnh97HT2Vp2J6bdg3Otql9MKo8voF9lwaLnBE
	 ARsGyvHLzCKbZ9EWWeLwapb2MyPEOb1CZUt1mNZ3qbErlpdgLK3Aa53Q+0LQdU0rKJ
	 1BYmPUVGXO72W8tDoM3pcrFg0nMQSLYB2STB90tEJ8k853oHYWg1uI6nR50ngsAHv9
	 q+u+2cXmEg11NEF5wTBwPBvjP6wdK96QNUCTkCWwwgyBbOLh5aaBF/xv7jIrdUcBxE
	 7IddLLUcwtaixX8fWVVPHIC16tm9dRVmAj3gKGVlSKOMcffjdtz6Zk7PqLxY8qln3j
	 IDmFfozDQ9qww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FDFEB64D9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 01:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168878082870.12600.13830538202757474106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e034e8c58be53bd180e22d421e2f7dafb7d276ca599bef7cf971a1dd26f05422
Date: Sat, 08 Jul 2023 01:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688780828
