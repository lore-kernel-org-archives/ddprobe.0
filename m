Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769DA12B66
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 23:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E27BFC433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 23:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687823588;
	bh=bnd2TDkLc7Oz1jQyuu7GHQrT3IcHz36bbyCyzZH3PuI=;
	h=To:Subject:From:Date:From;
	b=ILwQcfncH/71xXjsdd6rvZvY4ikH0sfccQcWqlyyhKODujWi7E/vW1MKOZkffOQJy
	 kTtm3Qlk7YgxihOlFwWt1wLxVi+0JjVN4qDCGz0h9u9rxsjbT85pzW+W8//UTFbwSP
	 WiIbT0S7+xaMIQGG7PC3yfiOD4fnofwSBA+/c/KOExR3Ib5T96+pILayBzEUqno2gG
	 8X++dlMWAy71Pjskvi0cSOxkE5ABfqFEsnejaMJuEqYroJQo78UIWU4IHXHZHhqDIU
	 TIxf6FqwT1yfXJYERSiAGZLgQ2FQ1N+Iwy0yG+xt4nAX4ZqLnuby4gQe5wlmKGmn5y
	 ZUGCi4cwbMFBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4808EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 23:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168782358879.27204.12425345352581331282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ab41274c91ace15fdafe3d054ccea6215ae489f04e322e9248a7012908a6e5
Date: Mon, 26 Jun 2023 23:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687823588
