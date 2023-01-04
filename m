Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB48B637
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EC9DC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672813287;
	bh=kKHKkMeeRMOVJkyX79Dtcx+vPKCLYeUD8FUznuaCbjk=;
	h=To:Subject:From:Date:From;
	b=iKqgClRuW0hS6sbGkW8GYuGK6ijs3vbQvf06YoWrDvQRVDVP93NKH4Az2epUnAbwr
	 SfFmEDT+8STH1lz3EhGpJSv5RdcCZE13Y4ef/WcDJYpQEu2qafcLaGVn5tU8cuN4FJ
	 84edNHxcP+0JkRsKOucPYfjS5T9fhFrkJITXf95GjJRGvI0VKEl7A3a6C9DTc0ygC9
	 BMoFeJr/no+rMl4ZWppoXFFZxSUPxEG+hOzPOvgWvX/i/ThncBt13cHdPLJJnMBl2t
	 XgMrSQagIbiXarklDkjwWWPlX8n/JLTquf2TLMI61/wXlwOlRsrrl9VUuXFjZmk68k
	 elr8h8xqEDYdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72621C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167281328743.22164.7428871074295071788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 749d9bcb1324f99be6e96673701399ff90a7a6e2e37efb6f883ca401bd659b90
Date: Wed, 04 Jan 2023 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672813287
