Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4FB7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 11:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB7BC433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 11:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674473585;
	bh=/KoGESwWVHJfrlhaWm/FcvYEQDD+p849xle/QMMoCus=;
	h=To:Subject:From:Date:From;
	b=cla/MKTqVgM3rYOSN8P5vLSmY+iK5IjyBzOgYcPKCpAy0em6P8gms5LKI4XR9oaDl
	 bKHJbx8QGklJRGKZBHRf514xmxVRDYNPtmqCkR/Nu8o4pQX/MREZnNFImJ5Hevv7d4
	 AAHNCqKatCAtOueNV3YqLOUxoFeunJb0xPWWLMFV7bQFnp0uL7gLJaCkMYHdar6SGf
	 opmFoqAsWRSfqbn6YN5LtFr9I3wXsgOC2XAq71O06sum4APvgZsXWCytoyGEhsrDCI
	 RE25cse1feFYHT1C9T2lfFEtOMc2+2tjCJeR57CZ96jU2CgXajmVMOE8/sW2XxuQaG
	 jVLWdJnGHF5vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3583C25B50
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 11:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167447358572.26036.5258370494971371922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8278b9976d1acd6c21400e714232dfe0d7632468b0ff386d1e9e9d5d31524ed
Date: Mon, 23 Jan 2023 11:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674473585
