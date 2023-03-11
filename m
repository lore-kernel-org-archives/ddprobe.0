Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A38A7B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 08:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01CE9C433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 08:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678523706;
	bh=rWwECceJ5OIV9Azk31J8+vNdC+iIO4ZSq+bAN80Z9MY=;
	h=To:Subject:From:Date:From;
	b=EVVq8ipEvubB6uacwi01ZVU7KcfVK011sj8Ean7gYSmBI0W+GKDKmNolEfJMSEIi0
	 sY9c6neQLY37bwdVn8kQPn6+v6zaDrZ/bSstO9a5PF/l31reXeA5e3pdxx39m6vYyT
	 thpd0vU1xe36eV8VTPQU4Zzi+YIXI49/x8d1sfAK2AMhDZuVrixaZe1mCeXvh9GFSE
	 DGmgGARifFusAQ685y4ZFYXmWOWDPcfTChZlpeSnsaZSiMFkWwXxs5OC16rj00JQlK
	 3La+FFe64zA6VsXZIlM+eZ6Uk+GSvPrYgXQ0i3BCeEfqC9fOzARSSFwyFIgenqe3cg
	 fRBsbI75Z/zHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8304C74A44
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 08:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167852370584.12966.7032887802020152438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0962512158178850184a75c871736dd046b86ecda034abad5ea5dcf781b55e6f
Date: Sat, 11 Mar 2023 08:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678523705
