Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E0E23A7
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E424C433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664607653;
	bh=SN0za2l6g4qCcsXUIlzUNKxYwfUgTybCwfElZ1TTlxA=;
	h=To:Subject:From:Date:From;
	b=EBMCFV3PVBOYoPuJHvvckDJB6jyDAI1GrmNikDQlJuikTYl8BPWrvw2wHiStnAcb7
	 TRcOZ1cId7HgB2J9aVX7jz1Jjn3KXpGNXXs7nMJAJ/nQyIARykwGz1715yMwe7Kh9h
	 5uUp8zsMs7PgqJ3r42mlUJJ1kZTXx08XhAgY3Z6Sv9gP17t/fsmp/glwzSJVhHwDXD
	 E2wMUO6GAP4Ek/U48rqq5wZlEhwybnUFHWmMetZkDsUYpsun+ys1J1lCP3VfS/sugE
	 KpBMfUnAN5k7I9rW/HX0o0av33NwNOe5nUfJBzYyM/WbJGnbmj1FDNodUstSCVBPYy
	 lbyQ7vy5jLYcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F9CC433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166460765334.10989.4889863297259885969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c8d45a2a894116dde24cf526c954471aa8683b8bf293bbf56f0e295908526e9
Date: Sat, 01 Oct 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664607653
