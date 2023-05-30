Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8232A10FF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 03:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16DA1C433D2
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 03:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685418126;
	bh=EVgCidZYSznTj1+1XWh/Kh8lVzlH/BKlhpgKasnxPRY=;
	h=To:Subject:From:Date:From;
	b=FsaRKpaw0IJbocgILWN6uvyIiSn7hLjqaLr8V78DJYezG8ltb4xtqfREN5JYDU3M6
	 vUUHOTGiywYyBO9AIEymJgiy/zwNSASS63Dm6gRqCIWOt6riZx5D/ZYi2B/WsycbqY
	 7BHPFaKDdAqZxdpi8TBlC+SmqQVNMt1ZiP299EazZfWs0jFMzQBo46FzZsKXRJca6d
	 db/tXx3bBBnTfQAFrvMMCtEkefcSNrXppPmCZT0TS8QfpP/CMolf8Pu+h+gyC1CejI
	 dJXVtKhsrh47aDoHUw8L/SQ2b/5uvcfBWk024bV6dQ1FWRVnkGWGXtdxywcPyny6G0
	 ZsjN3OA9wM2eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0B40C77B7A
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 03:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168541812582.4861.13926425065413689940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b58ae5e2dd1eb0b01fef6a5ae392941795cc7e017d548a5978b7441589ce720
Date: Tue, 30 May 2023 03:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685418125
