Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C434880A
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76162C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668234054;
	bh=Bj7l+wmTBQDGm5N7G2VhAZMvy2SuZbdh5UEaiGHcZTA=;
	h=To:Subject:From:Date:From;
	b=tmiN8TdKbOEz2r9SG5hazDucFnhnWqi270Ll2B2nVqgNYwKb8p2tTrS9kivU7RrmF
	 JWMSfipCcDJgERX5mikA/LqUYMd0Gk/NMWqi3m293Ar7bS6GUfZlPhe72MZV1xE9po
	 W8vFdnJQYl+23ig/OsuV/LSMTFlxHQyjQJPyzHkkMp7Tg7SAZLON06MyzkyJb/QJHc
	 tjzXlgaOqV6DJW7nJKJFkU7Qh5JVnv6KPF7vOy4tTemnB9Uk/z5j4tVsu159KSWuhI
	 LH16BHvls1NoXdp7Kg++PFCTU9d9eiM9Mk2rtwnFUHBeqGMB2HtyIVF0LhKI3/rpYW
	 c5uM0o5RH3VHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59168C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166823405435.17879.7334417495503102156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d188280943205c54fe757fcfc1f20023ce5ab3bef4675c79b1ac33f8d68d95
Date: Sat, 12 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668234054
