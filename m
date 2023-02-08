Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECDA2560
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 11:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF227C433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 11:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675855805;
	bh=hLLHPn2uVys7beNkuSuFtGR0vXNf/nSpYj4bQL2hUC4=;
	h=To:Subject:From:Date:From;
	b=p/yA3wEkgdbWvyPtG6L9lT8ewsp5OXsaSqx3Q2MsN3FXkYTp2jrIc+1yc06aGCQQV
	 g5bf4o0XRRFQrM8AUH70v9R8FrWsSD/UEuZ4znhzU5qsK19sN7gISiq8etgCMFRWuk
	 B0GT8NPD07LaotRKLBWQVQtj7wudltCQuWItLVyRoIlC8r12B1IVMQPTQy7zAXE4mp
	 K8TjtnpIpK2Tqn3cR4Kexvxj29eej+gZL7gv0mFXln5T36NGrLCoISOwe7AiY3/V++
	 TlaxpxcTWfLEBToSu6B1R+g4i+P4S3HQzCtg+F0dXtOv3EBFJRmhFaKs6woNef4Y6y
	 92tuSvjBAZ91g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2129C636D6
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 11:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167585580572.1769.7797586192533190410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3004edfe7e09abf48c70dc6b5d4f54e427ea3a05a607947ef16282896989433a
Date: Wed, 08 Feb 2023 11:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675855805
