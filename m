Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE61E10E6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72704C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669963254;
	bh=2ygDBoBcFs+3+bxkZ4NpaQHHZqX9ldgrP9WqflwC34A=;
	h=To:Subject:From:Date:From;
	b=Ov8q+eU+Cv84z6beJvXqhlLgwp0WYUChRawHvhsfbS9i+ynbL4HHoA0fs+55+1vfl
	 jgPaFDs7KA64zxI8VMuE5AOMrkUhlywMb806zD+K2ZktQMp9enbJrKt97yH79Yqw2E
	 wfJizIKKOWNEZrmxAxSf947e/44wDU+vSJzidwreviemzHM7A8bdFpqiA0wesBuDbA
	 SHlcwpH6Pkiuf4cvOkz6PoUooFUArOvKNGdbOc8belh8QV72imtO2Hh8MySuBkS0d5
	 ojQ/CIsfs35TLKHeN7WhIYrNtXwNbhNK8wwEyzSiTNhR14VtWWqtWnS8LP67xarHzO
	 M4UeHi+zID9bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57BD4C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166996325435.23961.3600577376624839707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4632972385a71778c9ca99acb4bb458fcab3ba67a2967a726bd5f70f381aa0c0
Date: Fri, 02 Dec 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669963254
