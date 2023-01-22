Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F34B65B
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 07:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E49C433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 07:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674371525;
	bh=xXSzRNPnUaTY9v/hxjZGMAxnyrrIvuQWI6ES1yxfCjk=;
	h=To:Subject:From:Date:From;
	b=lY6e/ix1oBjc99Nvw02jnT/l/DFgy23RWIuOwvajHOXQU/iUv6sOmtjSuu7NGnT7p
	 aT+ORHRJvgvtZx+PaVQ/4ght4YDKFVa7wgjlcK21h5yWOLn8L92z9Bz1hA7t6eiG2Y
	 DSkL1jdgYpAqyiIJVzE1/6LL3Aq/hd3eP34brcjg/XW/5EjzapUtW904pKpBEfq/Ok
	 v+jtrcrqoZka14Zk/WsBQJ0XwaQ9hb5xFGmoeSr6EiDPAWEpteKhkM/zEprc3GDePK
	 IlD3UE66vjfnj+hrItDlkZ1Ly1PYTpeisvXbSikJdS5lX921I7VjvoTBTqdqrns4ix
	 pX4t8/UxbNNGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC41DC25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 07:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167437152573.19183.2626549956765499542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe7794ba500a72fe7a8e7f200d21bb5f7292dd355b40d538b2cb980af7b3f4d4
Date: Sun, 22 Jan 2023 07:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674371525
