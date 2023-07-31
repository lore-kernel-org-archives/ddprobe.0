Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D700EBC
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 06:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D2CC433CA
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 06:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690786328;
	bh=g7iSIq2BHQAuEh26BPPaWPgTJo2ZP/v1x3wpvCuxZBw=;
	h=To:Subject:From:Date:From;
	b=qxxk+73pNQBLSRbonnpDMXo4qQsi5YH2Ffyl1pKPsWtkk3HbjUOpEXyB9YSaSKghX
	 80v/f2/6itLpd5kG8/nGfaeVObJ7nGoVHDJqf3i+F18cSa/vqbURBB8hHocXi46QnM
	 Q3kEnM43VeLFGzeVQkUy5ussRTnEivWFwn8ZrC+CIs/4WZbo60fXw8tf5wJ5fkvKoW
	 A3u0kfcG76EllsRzomDq/LYXsG8N5C8bCN21ims0tZN1spIjnvHw3TDiVaHqPl6fRB
	 iRRAy5LL5EXNHPbAxWosRp0yyOB8NVblsugEtm67+QwJ8aCJIYBSys/ssunHF6WXAJ
	 vm8RPKNjfi7SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9741C001DE
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 06:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169078632868.30582.5211253987703506818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9b199d992c3ea876fd77a80f812d7cc1cc5362cc550142a0992af106c356e0
Date: Mon, 31 Jul 2023 06:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690786328
