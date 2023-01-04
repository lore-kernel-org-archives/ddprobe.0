Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D58A4A
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A23C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672851687;
	bh=iuXOMnl/MNKHRxmMH1G/71HRwr4hA4Fk3OD89YJLSxw=;
	h=To:Subject:From:Date:From;
	b=Osu7/B66TVxYzgk5QVe5tdAR9WqBrQWbb9gZbt9n7rN6Y7gN2WhxgnkinJ3jh/k+R
	 5IK4WtyMP61W3JcRQ3/plfjVy9EdnWLTQiMNPgrC9PaWyoEZe5nODjX3WrXRRd02cw
	 2Gyzv4mfc55B87PsA+LJ+/v/+MjCmeckHdHvADzQnfdfaTPKLbaGZU5W3AgLJVel3w
	 qy25Zn1Jxh9MvYR+ZZ8SHM7H39flpDNW7VE+fOt1eYXvV5qMgsc4tiknA4363RmKj0
	 Xhr40x7S3keMEn4w/uaIHiws51GWuwEZprVjUmldpUlBdN3MNu8oKv1HVvp6b0Q2k5
	 zF95WpiOcPYng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B046C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167285168742.4553.5778955006369670761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6ea5630fb053910dd930e9a584bdaf9b1c6c97d451dd880c0dbf0162902cb9
Date: Wed, 04 Jan 2023 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672851687
