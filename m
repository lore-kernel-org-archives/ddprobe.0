Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A341FAB
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74C37C433C1
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667707254;
	bh=WzqUwg/cR+Cal/U/U/8x5XYwEPCRitTTKbMJZjdHd5c=;
	h=To:Subject:From:Date:From;
	b=PQ/2J8mVVGBohtrqhznOhyo2f42hUaMjtRzNiy+TK521mODOmEpJSbugrkmRM5XIe
	 TZhbtoOTBMq6f5V8dU9YESTBggiREnV6tcQuAMWQIEj9laNmlKeFvbAPtaNOSjlzta
	 pyBZlStC4wRgrHxgsBvEPNl0wXv0c5HlAWygW5AHhK1BXOuB2Jw9ITYT6cHxD+M66x
	 p7PoR19wOTZJ/JXWAiTLHkwHgkGmb/GAAZt+eriyWbuShKOIBq+WlYD64uVRLk5OiY
	 SvOv02XHcAb8CQ/kJ+TU8mn9oZBiwKUNjVF6KeuTbeTjgBZLK8MMYImX8WVkp0db/C
	 5wxY/54ix7PYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58E40C4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166770725435.10872.18029855395112702159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6dfc66949b53d59211a52ec54f8067558fe3871b952ecff9039a74cef2284ed
Date: Sun, 06 Nov 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667707254
