Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B36FF163
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E10BC433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664713853;
	bh=2sZhk7QfnlTUrLWtA/Q0O/0ro1Rrga/KO8onpXdptXk=;
	h=To:Subject:From:Date:From;
	b=bx3kXBlSTxDfztTh2tjZULNCzYBZchFZgl6Hq5KmOB7GjfRX9zJaImz3liSyMAgvy
	 3/hE2XfoMf+BSOTbCEE2nLefvHRDcu/V0KLeKbo4YcP5AdkOI+mgE2S+zmhc5dAgTq
	 gKZqpflUeVCwLhvyO6vKX71me41/sFPXcrRUMKL5DkUsto6eiC2PLWXH2/K1LM4vON
	 kJDh5w3zQSc3eV3yo0wjvvE74uyo9l/vF6dbjn/Hb211u9SoFNDrX0RJNLrTAiPBxw
	 tYzEHuQ5JAZ9xXa51NR39/l4vIGVcOv6opyO3FR094dVFJcZMRLKvOZ0iaQJJzQNnK
	 8CYwp37Dp7GXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5518BC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166471385334.2937.4965812219804641153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797dad28869eb4ad2d346e3a5b5af193f2b05a11dbcd970c61e1e19bea60287b
Date: Sun, 02 Oct 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664713853
