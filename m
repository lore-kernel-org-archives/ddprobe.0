Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6393DD2EB
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 19:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEAF2C433CC
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 19:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696362368;
	bh=t8/P+GLuIW7MxUd7QsCqKKpajW83x+QIRKyLo4zYVUE=;
	h=To:Subject:From:Date:From;
	b=H60ww7ML5i7lj+sLHQ2NInHlVF25YyaswGufjFFYAZQi5r4Sw4eYy3Znxubhod3iY
	 LSaaMTisL50/I7YwWghGQTQ3rJD+LwpUI/j9ybXe+1e4+PuJuOGjYdUJB5O7jPDJEY
	 HzysMFC/lxlv+2LspCODsf8Xa2ejVktdgnQ1kOTsC6fAV9/QxKCBPujv0wXpJk821J
	 9ARoX3qYgHegOom82UggodsEaDNdeBzUolxRffaGFno5D6kyhd+CgmO/x6YIMFsEOb
	 0TEhpffQMHYKxzKTsEdWur53vQzbfrr3bG/5sL17OQa1kJLDQwQahQ33DTBRQQi/YS
	 F5vgt5BGCZ8Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA831E8FDB3
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 19:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169636236875.3766.8044778866106510361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a712e3418af801105c29bd10b386bae4f4296bc6b3884e1e0810c9f026ce0e7
Date: Tue, 03 Oct 2023 19:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696362368
