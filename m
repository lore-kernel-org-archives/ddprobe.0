Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E164290D
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 14:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C5CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 14:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674828785;
	bh=uGL4+xvGHMdGkZP4lBwUJryHIZiXXvD3dVzDMlm03gk=;
	h=To:Subject:From:Date:From;
	b=qo8DfpZfnkGgRgr86gOPelsUfDgMOenv9ywFidPNxH/xTG/Y4NM3SbDWAQlZ7q8Nt
	 kqI40vSlyIzjf/oaXssPukDtt+DFnm6cX0xAGJ0/5x7T6ZPZMu7GS7rI0/QvQUyyIg
	 kVCp4CFo+41dszDRJzXX1w4rtebZERDJuS2q28DhZt4RVc3BLhGebi16Y/QUridp4K
	 wUtjjDeJBTZtcoy3BlNe7qXFqFi9rtU/Rl10/jZJc23VcOXntIZAI98zBZu7Rub7eY
	 Pi9z4s2EZe9dS0Kj52GiaTuVF8cd7hVH1Uq1hhijyneKFJsXxfJA2MrE54twJ+pYX9
	 Fs2AK+MZac4aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB70EC38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 14:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167482878575.2339.3414827341419309740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98bce84c4861f484671beca52a792160b3d626cd1816b40083870f45b6e61995
Date: Fri, 27 Jan 2023 14:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674828785
