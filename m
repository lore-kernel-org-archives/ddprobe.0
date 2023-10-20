Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2268D2033D
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jb8fkB4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 885A1C433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697830096;
	bh=yKXaUZdnCHPaNR3sUZfA2g5NfBFCyjt/m9s5wH5JJWU=;
	h=To:Subject:From:Date:From;
	b=jb8fkB4aidG+pc/8RbxgD0008kBUGvHO33w/LzeVkwRyplGOI7Jmiyulzd6QjH6hh
	 U4j+wXCoPejrKso1ye2hGpoNqSKNx2wLqxXpdZDZvnoG93bpzSM1/KFaBES4N0F709
	 /qR7D4ESpt+xZDkB02a1B7GHnA8gCKUXh2SRBPIcs0hqTXNSpRnNinGMJnon3aTPTl
	 ObNUhWnIU1Zh7uBdwsuzSLVje2tlOVdknxU9Hg3K6+snW57jQtapf2kpxNnlxrjaZ5
	 dQGdU7eQDnflgVdg0iftQ5LKXvvjhK8qmj0H24UgBbufcjnovaxggD+Lz6p5IoSKuL
	 T+dBQLr0O2cwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69C43C001DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169783009642.17163.5765941148550559211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a924febe3354ed45b61f6220f2ad037df0697c549afe94db590e5a00bb78aba
Date: Fri, 20 Oct 2023 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697830096
