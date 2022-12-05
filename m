Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C285B612B
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D61DC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670258454;
	bh=vuSPnN+btvvAGSM+8/VBypBjZRo0dkuj9Lefbq/4fo8=;
	h=To:Subject:From:Date:From;
	b=cP75Mz7Jdd/Ix3Fbs59yHUkJ2BDgdzRolp8fQfPg1wCDl9dmgPa+MqhvZ0YkCQSxh
	 QRV9Zo3P398pxef+U9Fk3VtLHNWYdPzKHlDGCYmcsnwynR1mA9lC8MEJeh2NjCbybw
	 Twu3XoPyDDI8Ua7zRL9NHYPMr9Y9y64LUtlZMCR6bTi/2t6ImaaIUaWEp4N52mi4Le
	 +2AQS2XY5u+vgRFfZl7K51gnAGH/Y4LHz17BtOBO3Fh4Im5SbMdxKRDs0lvoZq30VR
	 NgOEX+LyJAZif66uRDctPJ6bJ4AFgHCZVcS9HpmCYoayTomm4BvnIiX8Qqwb8qbuqJ
	 ARC5Vym0Nc/Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 505F4C4708D
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167025845432.2614.9867159275139771011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac8821443b107b595cfe5604faba68de158f15e3bb4b063ac79bc906ee9840b0
Date: Mon, 05 Dec 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670258454
