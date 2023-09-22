Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655ED45F67
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 21:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB0DC433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 21:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695417908;
	bh=M4z+CGnP+Uh5mPS8uYXJNblKEY6kjCZHiHighZwUfoQ=;
	h=To:Subject:From:Date:From;
	b=i0sQCyh2ZW8n56lN3+4Df+xX80Ji8oWNH654vhv6mW2mzn7gncH6NAP54Spe8eTjI
	 SjcFmlfWGVJDWTOOk6wxfk7apjWGGaT+iQWPhm+LDTbwfZYp1SomL7l4TBf0P2axGj
	 UP6aPlMw6dtTH07g91jbL36lYsgCUilzZ5nDEM924F9YZFwKRrR4piu/h2WHBBK8WT
	 cms35lQpglVcp3CZ01qFOP0czTs1nuAfRirov8/MKKWMcmK+ZLtGRdN1kcx6CsdEgU
	 a6BMnyJFmVFiUGhbW47O1XZtZ/JdVqEWBMNbSR4t7BOUEog0s5VCsvLtvCjlgr+uVf
	 iNJtwatLliQuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B62CE7A86
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 21:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169541790868.14900.2452568222732750365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 905ebac58e0bc83926e738339bc23580be0c925838a360c39d4c29f36fb7f110
Date: Fri, 22 Sep 2023 21:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695417908
