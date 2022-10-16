Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6ED57B
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77546C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665882653;
	bh=mgHTy1hr0adQtbjSXJpOlS74T+n0CUiHWWgcgX7/Wxk=;
	h=To:Subject:From:Date:From;
	b=LIauKIx3uw4SpU/WGCrUt/IM7P/z/G1sxarH0YKPuIb0yefPFgxsNl0P5h5ZJKqxy
	 /Hx3fp6N5rdt1eKwDHm3IbCN6QKkENmPUstY4yfiO5kQX7arHxVkgtWko7KxDJctUe
	 Flr643eDBTi1mO8mYGIchT/3klJ0ET5io76sxumdzj5uWO2JqDV6q1RiTlF2NSaoIR
	 s6YigFGcvvl8jMdeyACog9yg0Qze39j7QhY3UnsrqGB0Z/+qwkyyT59fzHJFMMOByd
	 AVhmJx6X9UJlSTP2/N483DHm59HwGwHrHP4nrClmv6KtQWhYI2yPFlWVRvi8CYzvtA
	 JeHNxAoG5yiOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DAEDC433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166588265334.8465.6710783970557161468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71103aa21e9fbcbedd03c8b9384ae102931119b312dc8aec7ad362ae7f69a62
Date: Sun, 16 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665882653
