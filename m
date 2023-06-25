Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B9977464
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 23:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9B80C433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 23:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687736588;
	bh=icBafK61dW6eDgXYKIhgJyfhpLwajGa/U4CO2WwOJvA=;
	h=To:Subject:From:Date:From;
	b=GcGW9W37ds8zboTi1JhV3TygNhadI5TZQn14Fc5BQOi9lhKgT+chj5VR1uT2w7W67
	 SW4TSp92g+vMN45uW6f7aHrNLDi/qcqZQ8SFK4QHpuFrqBEDKZg5OEW3DgvuOJ1jBh
	 E2Sqei9fR7y1IN7gpbkh0syzjj9ro0yaHfnA7nV8YqI9bGnyQw6k8OVes/H/qHdaMF
	 0kAcvvzLxR3yJ9nd0bYwHLlvpKx4mCNMpl9Rq8HDCpny0lwze2PUSvf/FAz8v2TU52
	 Y9xChTIIP0p2rjNo9cll8RmGBKXmRjE7ohIoXBMdxTqIRFr89L2DJ6PuhzI62/clxl
	 HfPnXkJyFvDKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA47EEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 23:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168773658881.7531.14259609510267694642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61aeaba67b95f29ef31122efab2f958b0c88690c8bc81aac6672d2967737ca23
Date: Sun, 25 Jun 2023 23:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687736588
