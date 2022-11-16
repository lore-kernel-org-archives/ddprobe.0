Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0DFED53E
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD70C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668627654;
	bh=ly7G/tTszEstvylCxyJ2deyVMe4oi2QYBzDKNJMbIqQ=;
	h=To:Subject:From:Date:From;
	b=fKbigNY37nISXQekIl5kVuhrBE4V8Q1XoUShIvlgDXPBOn5V8d88r2bOZdBDxYUam
	 NBSzyHrM6WKra0u5ZmFKYrtMLZeS8V0XaXIanwEhPgyDkBmZfOXy/QTK6uG4f8Qgwz
	 g921mpp+WmHlmRXIXii3CYfureIOp31rhw5S+guJl90HVRJO6s3b2XUMgbSSEUAfQ8
	 1t41jT3G9TjCMoSDDzrk/ftmAhAANpSE6a+Wvc6Y/eaTC39vKmdUSleQOqyFMBEIQ6
	 uCpFfRwBUJ4Acmc9z7m5ijHiEwntPonALCGmYKCBfq/ey4Iy+NbXi795HUdTqi3D2r
	 /+vp5QJT4DjLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB84C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166862765437.26830.4876321727666808655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26ff95efc76f691f8c078fa041d54968b6518b96b463a38cf89cf5360da57f9c
Date: Wed, 16 Nov 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668627654
