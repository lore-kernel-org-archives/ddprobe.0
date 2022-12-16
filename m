Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6712634
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EAC4C433F0
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671178887;
	bh=PWPLXEGd6Vd1185c08de3HmjN58a30wwy07/2SLdv5I=;
	h=To:Subject:From:Date:From;
	b=jKGSuwpG5wWZfMgrQEY4EFzl510xo/zQs16kbjSP0RypCpsIiw+I52VTvYMSDje4V
	 4fBxoYr7oqsqDGIdpdMSa08zKygkPGaCWDsbsnMjYF6bmvCLhx23TQ9UNhdkrdHPvf
	 vuGPX45sCWtlmmfTFsLzVFNCuAUB/blzL+7W77Q32RmICYfh/En7WR/L96dD9wsGnV
	 zhn6kp5Q+9pbdc5YND72YrT96YQHz5A252yPu8nlqNlTyNYA2uZnn4i3n+29ba8QU+
	 Tx4VrI8pA+HYfc/8DpZbbCyL6yhxxfP3IHaOgk58NFSCPvVzQGwJm5JHzsYJUzq5fW
	 7d/hjecWtspfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C1CC001B2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167117888738.2965.4268567562327184555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c1c54c48fa762a26d007905fd4ba1e459ef5d80be2754346953f73498094891
Date: Fri, 16 Dec 2022 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671178887
