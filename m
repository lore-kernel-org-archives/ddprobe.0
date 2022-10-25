Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFBCB7E2
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65AC9C433B5
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666661453;
	bh=tW1t5a02ulAWYl1CP31+ZXYWQpmYor4fSmGNQmjhmAQ=;
	h=To:Subject:From:Date:From;
	b=Sz7U3mVd14DIcWviBt/nejgu4PJjdaduOcbXXPF53oy3HW+tvrCOl2Fp2iGWUChiQ
	 hJx+YS22TI1pyBJFZiZyVuM+sFD0hKi6GZClWF53iZ7IcYufgY+xcIPU9XT60nCOWD
	 xXz0VrDfsaD5aXXgM5RrXntYTDvjm5zR1uewZYOx5hC7h54oyEFa+Q0bAbU0bz08ZV
	 ljkJM+fp+htl6+viFeiCC/ONYrr0lpvKgyIUyMAyA7LKrp7Pq7tEi3CJUmhSYpgFxP
	 uFCcPnk4nq9RZZiZYyxoEQmuZdtBL8HXifeqUeOgA+hefoF6//RrWXvfYMBRL++6AF
	 jLc9gp6Nh4kSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FF70C67871
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166666145331.29468.15752700282156616678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c758b6abb95ed9c5f71a3a40d79279078325801925c6faf263349a54a54b550
Date: Tue, 25 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666661453
