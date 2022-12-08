Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A926ADF
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 16:10:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 733B0C433CB
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670515857;
	bh=M+Lcfz/LHXNv0AsTilzoJ+t73KL/lxYDamtADryas1A=;
	h=To:Subject:From:Date:From;
	b=gH5TNAr2kTdCQUOwObwvXqRRnihwFt1YFHsBoQ0I8b/JcGP3VunMj0/9JgP5hoV2m
	 HXDDUbNjfbbo9s2wLeiokglwjwY+auBlteglRjBgjLytxK2UkYGbZBqIBdsRPjcYWh
	 Yfny/uLIPN96wZwDT8re2EEuufg0cOSPHtuZizyjxwyyxoUS4CvpDdDJI4lLyoApfF
	 lsGw6tBFJhHkj8xCMQSUQG+nll8JFFjKAssbcXmehk6OZYmddH+Ilkr8MeMBY6r/vO
	 zcKSPT7SRHFziCrIIz8NckFxmujUEq+9RJh8UzJ0KCC/7QVealMGTMexX0SNJvNbhq
	 LQBBKrgbBREkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57C64C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167051585435.14192.11292702007607392652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07445c4727b30faaca9a464d15b743e64747e67c87065859ac365f1383b11e8e
Date: Thu, 08 Dec 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670515854
