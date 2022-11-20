Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF1963D99
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71AE5C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668981654;
	bh=HzsYd28WJy/e8w239ER8yR8+vjG2FM7JkG9b0etkLMA=;
	h=To:Subject:From:Date:From;
	b=CjDsNBPCKh4X8Hcw/UO0gzy8qLf8U2OkqsVttGWtD+mFSbTry5wWfsmozTwD6OeW+
	 bRg9CtrSOx9GUIvmfCD2z04ogFqljeTWMlYxqceC/jDwC1BelBuuCprWe9SL76/rRG
	 CHTw2koXAFtQFtFMtDwFTsxcAiYaADcBeq98QuqzTdPyRlblvgvAtby74CYe4DUJUN
	 JHGpqZS9raAkF38PNomPG18obkGC6Dlk5w2Iw31xsYiXWFecgozEyFbL+OuVJuS02d
	 Q9qZF71+C/rl6CiRyJEqccQhwI8sACiFfOcEojx4qaB3rwRKaKYnXL3KxBhJJVnotG
	 S9j/Eza+tYvNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5473BC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166898165433.31057.5530161485445717396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad43b8f3549430cad66120d7c335e88f5e7203a3108bb8e734ab4163c0a4c13c
Date: Sun, 20 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668981654
