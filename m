Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE3237F
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 22:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC930C433EF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 22:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686005466;
	bh=O57Ulad0AJAHnJBveRSQEG4oIKDtyHn0vimyBI16i2U=;
	h=To:Subject:From:Date:From;
	b=o/fiKxBIWvytjOEHwg8/3EjpQmHTZ24TpAhwLbDuTTqlXIBW/5ADEFsjg3mdQN038
	 Rl/bEEqCcQAzRb6/R2/rOqe4r5QY4Zjbwjq4+OpKHY3shuAE0RixJqPLel7JeD/Lry
	 qZ9LFOJTntvNBQWFOtSGUKX1S2JSHQkAF7MeD2p7U/gFsxMUwJZSe4JTWxtZceFkHH
	 7DTXIt5Qh7S3w+l30qFmcO9NxRRWVfvjHVNGrYFh9MSu8ikiWUTgd66xrIZK1nqevS
	 jRQvHBncPrSZ5rcfoGJ3bAVvuHziWwRdbVhtY919/UD2CsnmLPWD62iTEAQf/RuYTN
	 FYfCrJYongtvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA59AC7EE23
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 22:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168600546581.12293.4738567462664418118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d23877b0e0e48c7c25c921dd93e5408b9f0cc33afb8d34b3b65d6bbf3d120bd3
Date: Mon, 05 Jun 2023 22:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686005465
