Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507FE63DB
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 15:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7BD8C433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 15:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676906945;
	bh=xKxLOEsxr4668jBrenn2rCykYBO6E6OBokd3N8NFUjM=;
	h=To:Subject:From:Date:From;
	b=j5Z22Yv4/ZQakuZ2RIjGnRUSCUQdXrtAcUDOYyateESSuvzZqdjPdhVU5hrDDdnQX
	 uEDjzGii5vD4yLBFpfZWox1XSYk+FTV9rHuC+KV73/SMyV9Lx9nvdzzzMBchWqg9lg
	 XKS02pqmaGlF94kOb1DuHnpxILFxtAeG8V6HYtGbK+GmHkBkTpDju8ltgviwKbzaMQ
	 TBxu3FIoY4Ezdpb1gkng8M8Mo4iRAwsfkP/HS4raRZbfwbYwlCH3qR7bdNDXbgA/Lw
	 oxs4y1Wa0d05khj0ti8t3pI0I0GYD4+GUaPVTAuz74Okl7x5UxhlcrRlleNfHZy0+o
	 9zLSp2pYF/0Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCB3EC05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 15:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167690694582.3206.15151210496656901842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e8607057ce101195ce8eb1910dadf9f53df4da84144927164d68f45699275f0
Date: Mon, 20 Feb 2023 15:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676906945
