Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321C528E8
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 10:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6F1C433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 10:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675680365;
	bh=dz6eJZPe7Uv7ZkGUWiQZZlN6vDQ/NKdTfWzgRHXryGw=;
	h=To:Subject:From:Date:From;
	b=ejrdmWKno0kMOnpzg4JPdiGowxgcE3N+6o32k+3moJArcjgOYnXkj7jXMRsnoLkDM
	 Iyi9RMykU4nDhipYbmbr0yo53lFo5MosR/zQxkJp04DVYT59SxD/mjRJRH6TmOPB2N
	 EDB4SRocgq7FhLYy+zCA+Yc7I6/Ghus9xA86eX6zWmQDfVqgw5x2NIBN1d/uygVJHp
	 UQzxeZmjW7A2naJ+uwICAxe3ZNETfSyvXDTAk1htQigQNCljzYn+l/2xwf620HRF2u
	 7WC7gTdPu6AtW4vtDj6XcpH39fjOjrrwXjxeDISqquxNfz1HdBckmJEeBsdTYdQ1Gs
	 MW6OUpm4W6Wfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F71C05027
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 10:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167568036575.8343.12343671525116396958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b83f57e0e2e94d265be8231f21aa93cf374e843a9a73171e693963dfbc4a9cd
Date: Mon, 06 Feb 2023 10:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675680365
