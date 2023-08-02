Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493A3101EC
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 19:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D186CC433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 19:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691003528;
	bh=0Ew6okMeYKlEeEEXZC4ewUsUeKzW4WcKrkGtXCP/JTA=;
	h=To:Subject:From:Date:From;
	b=jgGKPz6Lh8CnnCCb/JHbQhuKlEWACgbrPRXuK3kddSynPlUa3reF0gBfSoVFTf+Ck
	 /Ba9UR9dQRNtRLl875STMhI6LcgtTOzStS0Sy+tN5jOop7ba3eQJ6gJEC40uJgm2pk
	 LbsLdKujVNwzt7h5bPDfAgbZMGyUrYQQu021mvAg9MdGHF5uVbkxzNWOCp7wqF4CYR
	 Q5Ij/sA57hYoR1sHDkzFk3xft1FcLkENdWTCcmckmCO+BQvSir3RwKLeLVzuc3LP7U
	 6eh+Q1zf60jFOYxtQgijcX4U1Xp7emDpRBJ9k+K9rlKracgf0qx/nfDNTDrLZCihKG
	 g8iP4kVPsFMdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C84C04A94
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 19:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169100352871.15788.7993623578665855048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f195ce74984c4c42b1aef85d77fff303f6d8fcb808711dafc23e6755af74b780
Date: Wed, 02 Aug 2023 19:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691003528
