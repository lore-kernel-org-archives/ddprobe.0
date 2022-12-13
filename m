Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E806279C9
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80657C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670961687;
	bh=dR/IoH4+YJZoHS7d1F44Ft6kYuH+LVPm7TMlIZRtN6s=;
	h=To:Subject:From:Date:From;
	b=QBQLeBc0dmJrCTdt3QZt1F9u1Da/z7AIEKIOv5bBnDeOptenf0otyvuIW0MLhF+e+
	 omAJUCmtHmk5Lb1QwKh/MICJrBgEYfsyCvJ2MIlxOJ+4UvsBKcXlB9mYpgcYpulsI8
	 ZffxK/lNh7B4lnYQQtZ4ORCIEF1DTP+K/BHZY8ro+Nn91R1SMudTlg1iEyn5+vA2uC
	 fqDxKpPlutBeNwLVXNjDHNYuIiDZA9hq475sGSCE2oA3tAi+rDO76UkanHZEKdHJ9G
	 ttf/I87RHSQrzubI1sJ4NLwGx0ESjkBNK8qZ5o5qzzeQ1a9bZjyV4Vd2V/5KQQ5EXM
	 TmSj/87xOMCoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64654C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167096168740.15517.14521725484814984758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad9ba325075af106098a5709bb69496eaea880aeea9aa21b7b9a98ea33b0acf2
Date: Tue, 13 Dec 2022 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670961687
