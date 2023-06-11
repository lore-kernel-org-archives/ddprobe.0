Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F5A979D8
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 15:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED661C4339B
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 15:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686496326;
	bh=Gs6A6wQhYcqptfkRo1VVQortvWWhu/y5JW+r2dFSCK4=;
	h=To:Subject:From:Date:From;
	b=mQuRSkmjxEkBycqMyBXOIM5JA7XF6d0uw2j7MydXPBPW22znvqLjeimy0DLvBucIg
	 LzzS4oYGWIHb9gT/BFuvTpqDmzDRcFPenGTmj7M6+gL3OGR3iQPRuK6Fk1myKEdrTK
	 5fBm8p+9oVb4qKAdTtwdC+LLCkklLatZsowvELCmUcWWDbtqDwBDa6JvD1X7wD6sPx
	 2ChOi76eUvASlMfCgT2qqbTUO8Jrs6UdcLJUw48+L30Edo+0fdGir6UBPu/EXwDzr3
	 y6WFJd+4ldtQeqr1vfQcQ54+E4HGVd6KdtyT0NGN1Jb7CBe46W22bR2uoCxPFbhSRw
	 B3Mxib8r5MTPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE77CC7EE43
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 15:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168649632583.4173.14074036862982861318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea99863484f10505409cce664fb1db277468479eeb7eb0ce29bf7ad4171eeaf
Date: Sun, 11 Jun 2023 15:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686496325
