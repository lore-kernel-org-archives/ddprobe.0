Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD3823AA
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E2E3C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667027454;
	bh=gjZZvS/+xm28D/VrWD4JGUEkrH00tzy/QzTmJUwllW4=;
	h=To:Subject:From:Date:From;
	b=ZyURGkMtOxuqfxrfPBIr8A6NhN3wx4nw0fLNrvvoWGw1QOIUJ3VmFzeMsGR06B2Is
	 EiCBoDNGfsz82IDdlsd6Zyy6vwQvAPiF/cwiXzgWXEaYRewJdjPB+8O9vHT0+u93+m
	 F3Qenx2GTyqdgnMsrKscnnBfH7BKfPxMh1Y2YSCcBZdG8OSjAua7hcApOmp2YWoLvo
	 7ivjg/9FEATuuK9+S3o4ISB66T40t8ZKT5LmoK7U7JwsGI3iAbPlfNYuwzDLPmN0+A
	 6GKPVMwhk/AXbmV7V/rHrCADk4j2IYXAu/7tMdWm5Ui/5KIpW8uZ1OPMprab5aDPS9
	 yM6IxD2zOkGZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535BEC38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166702745433.24145.16672817375550732193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c01ac2022c60f29749b21237449f27db186282ad8e57525147dc171fc892a2
Date: Sat, 29 Oct 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667027454
