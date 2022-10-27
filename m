Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8FBA2570
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68623C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666910454;
	bh=AmlsiTBqPbs34WBZQcMG5+46Ktedkq/U7v2+JMpZCBM=;
	h=To:Subject:From:Date:From;
	b=oYeBU0yg/dognJagOwnxpX4uwvjYcUgtln+9kbj51FHa324XP9GBCFVCmSmgJ7Sqd
	 6IFzddcbCocmET3EZUWxm42rMiGwBDqByFU2i7fs7uUE1Lz6OQr5VMopPQ1ecNXUde
	 MNU2HXl68UQJiBsRqWgholqJGvUU6T61jz1/nVIkGTZL8LExqifE76KxOAlBk9T1p1
	 MG0wNOEsugejvp+bJMjpOxXWRSwetjMBf3uCN48SYl2NtpBiwzGIFowqP/NzAUfLDb
	 y2nWWv/KkfyfWSKqzuvkR2QpS8NMKCGE49cmu6Dwi//nQaH16gRhTh6OWt1NOO24E1
	 DdrLmLH9r3bPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 527EEECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166691045433.27140.12411441397530542989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93534ab71f0c5d5c58ea328f26403ad93a0eda01a7067f9b6ba669650b30bd2
Date: Thu, 27 Oct 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666910454
