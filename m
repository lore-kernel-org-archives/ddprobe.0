Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C3B7E
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 10:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB6B4C433D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 10:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682936286;
	bh=b+t2+7tsI8od6EnNr4kmdqp63WbdSMsXMaX2XAVta1Q=;
	h=To:Subject:From:Date:From;
	b=O3mNDBQ7g3oSQkCFceToc+aTHYKPGjOq8QOI7RZAD752fGkwmAQVTY2zwCGb2MZma
	 tdYYHevn2Amhpr+l/LsYvdTemtG5MYeLRUFBFL1tUYovfIMLskn6FMPejZUNJRLxi7
	 F9tUUk9ur6n3VaApYdTWAZfwVQLY5bae6TIfR2icpMv9Ys94GViaKqFRSNo8EsLNtk
	 +3WBiZ5TJFa4enMJhoHeGz28VIYu9oq2+hbtuKkbLwlMZnvtFc7BbS9nRbw+wYo4QL
	 djkMKyEiuayipxktBYqQCiqYF6XUG2+SmFwTyznA14so1pguAkjp4reMihNcBNg1H/
	 gvX+dX/7zatsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD25EC77B73
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 10:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168293628582.19297.3532702247888382894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80b3e44137396d85458147cc710eb02f3f5906f2bfa3ed8e6f7f982075860fd2
Date: Mon, 01 May 2023 10:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682936285
