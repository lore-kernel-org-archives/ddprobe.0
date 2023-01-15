Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5AAD7B
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 874BEC433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673816487;
	bh=Hso4OJjJBfpAH40wY6HuHS8JMG6il6bAe67NeX0G/UY=;
	h=To:Subject:From:Date:From;
	b=qnU14BVYSVIoN8DA1QQs2XoE8Dr06p727ArinBkrqDnCzZhN/IYbjx8/P7wEiiz1u
	 ALzhxZ0SS4j6P5qS+jR8QbOP43TMRsG6TF5df4xKno6KAjGcoQ6o/dZzsEeSitcUwv
	 5p/UB1FmA1u95nzt7PSQeHTGHfIRqOLS8/M/OS2e9YKZ2x/yId3Z/mTZPPIgZjlesu
	 eHt4yHRi+LX8ZSzLqHRq5Z4cbx+1PjtclCsRjeb2EyTFAfhQYW5LQsSEgzJA+ZFyRr
	 fkmP/62RpuG4+L961lz/ECPzImDAKIEYIqtQnsTyzrdpWLlQIgl6AHto4Z/ADoSreW
	 KRFHUg8oz/l3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6599FC63797
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167381648740.8120.13334821224150666781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e98c7ac1ed3a291f94a678479c3c5c7c8c8efa2487c6d2598fdc5579d1e3ce4
Date: Sun, 15 Jan 2023 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673816487
