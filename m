Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49AC33CC
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79917C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665422453;
	bh=IF1loKFnA12Z5nhGfNT0Ow2nzJDqtEaLbGZhPFRU24Y=;
	h=To:Subject:From:Date:From;
	b=M6LxDaobKkHwNQZilJZfwBO2SNBQ3Gt9zr944BnaY0SB9KTuOGcp659P+3+yQYMxG
	 D7ZSYhPa+5g1LZ/vceBjCBDPn70hx030U2M/i5Zm9kToee1/rJGhuAMMIUcCqUtuhh
	 lphYpk6LyXIREg6ydZLtSVXo7MmC0Z9US6wJHaAXzuUor8DrTWttfdFWCQV1CgZ3zK
	 tfnz+fzpeOyK2YuD+xFq8YA4IdRcjwEcd2vs9uF7d3VHJ3oviPxhxkriWEFGn3Cycn
	 IxUNc8SzlILv36xMcqB5dZ3PAZ7xZdYDgNdm1d9/Q3aqToPqwwSBT9ofcpSkPuHsea
	 2/7guojYFuX4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E27FC433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166542245337.19356.18365195144669181782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f40fb39626c7dbfdaa1eed04efdfc639369afbf409ac60f7188d9028c0d34fae
Date: Mon, 10 Oct 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665422453
