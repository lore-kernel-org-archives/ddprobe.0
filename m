Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E357C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 02:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A68C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 02:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661740252;
	bh=9QtVwRoRd26IP+HH/FqjEK36l5djSBqHDDqrYkBwd0Q=;
	h=To:Subject:From:Date:From;
	b=vGWqD8LcbyLJYhMeKhxytwM4K/BOny5BmQFEoaVYdD2o2+jkjT9koyNrYwHPf/8kW
	 1/ny9OaPBgDHMpLGM+zYpxVJh4ULKK8bBqcnDYBtMrUUYjMCEZFyM2jsnDEaaB36bG
	 n+t58i1jf1Jzhu+4wpODUuL3HtygskyCoaEFNrN9DOfsoi4+zx1DIV4aOLIzalqm3H
	 ZfRAK9ecdBpgwkGheRSmpL5Jb7L75QcLBaPxCeYL0rgYz5dejS67dWk2U6uW41hxgf
	 AjAdhCKkeBTGdnJTsARkhQfu8WnFVPqzZY4jhIiW6aWOqyLsaEpFVoWIJS5Ck5wyDe
	 2JazrCnHdHNvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD32ECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 02:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166174025236.20885.9949356650548438763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d8d1c2064ceb7be25e7d29f8e6d8e8ff75308cc758fd893fcb04f22830f8b4
Date: Mon, 29 Aug 2022 02:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661740252
