Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C864D625
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83844C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672732887;
	bh=IhfhsoYJJSuABZmnJOVBD0s+MdauVhxQlmHxCV2mv1s=;
	h=To:Subject:From:Date:From;
	b=pABYP0ESDadoMdTaFilGhtaLjRKW4U/m4zlm+mAvDT85qQOErBuzrnJp624Mw7Vhk
	 elV07Z+IpkYRf3knqYLMrOxLaSkruQwRbPFRqMxWDZheD6dmnN+NoaaxZp+avmsGmm
	 ux4f8QEvmo8Lqrz8vnIydDJxm5UM+Aygx6PsYeTkQxRhnaPjrY+kaUIOWNjNFTpwC3
	 TXCquPUNz79Qcgix0gQSABPA83pySpjcYpdrFK4ifUzN3LAu4EqMuCCMk9A42Jy+jf
	 dcmaIFX4J8DZZ7UiigQsg2zDdygHZ+tfvu+zDZmnIAnRzrOWyVe/aFNJ+1cIY0WWg/
	 jd4CYMzEwKIXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E0EC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167273288741.11134.5330615752758695606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06177b095f230e315c724067143a40e7b492a90b1ee17b0104aa190ec16d03f
Date: Tue, 03 Jan 2023 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672732887
