Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14022482FF
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULvAW23I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A42C433CC
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701896296;
	bh=SiNelUs83ujtfCaNaQPBzzcwGvUEiXk6YtgYHUb/oOg=;
	h=To:Subject:From:Date:From;
	b=ULvAW23Im9WWq1SJ8WXpbrlk3dfz1d9lhqwHYTxmJXpdp29VLXLpvOnt0E97o0cTk
	 2NdOH4Id0oJdIA4sdQHFStzvkAvh1JfLihzlXa8lOqFWO+tJxxpTnhJ5H4o74qYFs2
	 iS58wHRDLGJzgTtlr5yDS2ybmtQkx3Nl7ypI6wZiBWM0RXHxFzWluhaSv6eXOGHP4r
	 NTdRLtyhzoHtuNezMiH7V8xyi+lI5Ylo5WvYmwDwB5jGVTDtjTNKruDzQy687N9Guo
	 45PvKzXhWLGAtMdpKZSliPnMc94Zp+qpaQ1oGxZMIYsgi4S+4fjdS93+xjOj+Ag1CR
	 sWhqzPtqYPubg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE8EC4167B
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170189629636.5485.16301437139521337497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 936b6cec10b759386e6a918013a3998574b328e3584c0bf5dd1299c20213553a
Date: Wed, 06 Dec 2023 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701896296
