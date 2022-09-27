Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7FC80C
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 660F3C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664284853;
	bh=efhPdPrvDZ8huw0AO4EgiKmjRkVtZXdbFzzd1EXtns8=;
	h=To:Subject:From:Date:From;
	b=hTDBpf75forBdSS1B5e51JzxpO+CyBmPpHACM35kZofxmbsjm0MlKYjlXz70eviIY
	 IWCOUH648QBNg2P4BIvAJJWO/9w4ILbwRAbFVPCEbzLUapg3gM0LphWSuTdb09vaq9
	 SILAe1XlESqgv22rHlFWQyzfSoAE7NSuA92p7kWMsRzHbzp13LDI/cjPXqwwaK4MMq
	 qiKh8Baj3xlz5vSHTG7m4xkU2YTTgTHJlHngvXvkbr0SZ9Jc5/Q2hCOOQ7R3c997Xr
	 9tjV4vJxdr+sGmAHVOPM3QGCFljdrBgD7mXGybnTcEXvHsKp/ND1Z3hIXU/TolFvcp
	 iHg1cnvrM+f0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F443C6FA83
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166428485331.18893.16804884662048014279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e06b88af99a5e581bb186d95e41c1d9abcbc89c89a96a4cfa3460041bfd721d0
Date: Tue, 27 Sep 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664284853
