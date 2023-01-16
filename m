Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C016933F0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E2A5C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673886087;
	bh=1HBVOvOivX48E66AsU22Of7OJqzW/ox3FbMAipVHIvg=;
	h=To:Subject:From:Date:From;
	b=IqHC0Mp1njYP25X7UluN0PVuUJvEfU50Lx8WYQw3r96mlkgnZbRfD17jEx9UuP1Yk
	 e3qF7ea0QNZCCBqLK8f4XHmqrb7/FaMvhzIG+ie7K8YxA8uEfLtVlYm/H9z6pKDp41
	 a/UusFagVTqwVCpvavcQaccxxD2jAVdjquKngWgff+Pzdo/XrpPsjfCgz+6C29yod9
	 nu3TNaL3jL60n8makV83YrMr/0ED418wodLsCUOkIqpNIrH4UlTHj+ik0bkHEwVoy0
	 DK4I32A3uMLk+Mc32pH6tBw5Pb58QOnfrq0eQBeNDywxQLBg6LT/Q0iNylbf4xdOdW
	 ELFbWLae9i/MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D5F4C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167388608743.11151.14876369645197683004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf51878624f722cd771d24b8a28e85aadd9161e68d040958d2ba7f078af13de3
Date: Mon, 16 Jan 2023 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673886087
