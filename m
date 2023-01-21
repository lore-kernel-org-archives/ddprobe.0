Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C45629AC
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 23:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE85FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 23:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674342725;
	bh=vRgAGItyiIYM8aAXbq0IfxRj/Rwm7htQiCK9+0/mq4E=;
	h=To:Subject:From:Date:From;
	b=e/YEhaaTYHR0BwwTrZFrXksbsYoRXRtEfoabhpQmGpi1aD7mQUut7yBLlYVmFC7m6
	 Q+ioKZo35D20ZmH3VUSZUmdJBmhXsAM+FMYpb6Av0sxqrhHk0Y/6xFtqxgAs4Rud3K
	 eNgri8FGXY/fNi/oJGGhoqeS2GjEIBJ19lKafHT+R5Z6RZv0crYpbG1KW/qBTfXH93
	 POR20wUFcWZVoOKb1fF50Y6j4QH0TmDUtyaILZ3VVe/34TDT4Pqf8FIf7B31pauPuX
	 LFNJSQ87AELQef/QK6G/4zvksbvsn3n4apdT+un9UTUV7velVuAUZlG31N7/X3Smb/
	 rwyiL5hwsWq8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF4BC27C76
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 23:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167434272573.5441.13062625768546363586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2e75b6f2bc5039c47627c1fd9244bf33527db489d7e12aa2fc1b60b64dcbcf
Date: Sat, 21 Jan 2023 23:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674342725
