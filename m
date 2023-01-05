Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDDE92904
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85406C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672914087;
	bh=Xiy3saFwJoyDUuiFQgGtqJfIhGE+8D3gvCzbyX4rdBo=;
	h=To:Subject:From:Date:From;
	b=qqcSudYYj+I/lnQA18fyjKepghZku2WXVOm9YqNqggLNNPdew5R8Yt245doMKBtmk
	 FGoIznXlESr+YeR8R+6nNazweOT4ZmriFpJgzADpcaYwVnzwgxaOvS6wv3g9qtq/0T
	 OZwpcTOArFVaB3TnZ1DlXlxdC/UvcOzsFnWzkwNO7/zuqK/2znoCVUJmcapzuQ6CNs
	 Bo92ny7BQZrqzjppc5ShGjXrvDKgOEy7vu4i+8FvYQ/pRflmcmd8NMT6VjjGmrUtGE
	 wKTR7LmxTYSoFeJEfF9LRget3CpYdqoRjscctkyYLAZOL8K84LHMmYVJUy1LF16q3/
	 4e4KQO+VuATmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D1DEC53210
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167291408743.13656.15564238556504830384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b4e486c0d4bb8d70752c75eb5c8041112d2de8c1650c07801aab0ab6f392f7
Date: Thu, 05 Jan 2023 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672914087
