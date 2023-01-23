Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F03B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 04:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D0AC433EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 04:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674448325;
	bh=Vz21xVocAQmEp03j0duD4+SvoZospNwhs72eXTi6SOw=;
	h=To:Subject:From:Date:From;
	b=SWEODTlehlvi5t+A8s1Lh6/Qa/9cmh8/zGUZl1SCslqMp+2PqjH2WfIkQ0AWysgda
	 JhMRrQmNgQjzJzZRtuYYP5kbUgVnGz3NccB0p9iMfdJudePvzo96lOqbRcHL7EmYgk
	 26ojG1aPesxxGO4AvRjQqoZRI4lL+EyTuuIAhkENTK6xXzcuXUNF4D/1xLZSz6Msk4
	 werPCS2VP7pfWLklMddi95BAbghcD9yZu+hn7ZcjfZk3DU7M+W4yZD290z/zOXnRSb
	 rFS+C2bov2FHN4Ji0IWRwW5OB01v+d5wfYpRvOK9rt4jDixRrnYwx2iMhz2cqsGdgs
	 kUwXFfJJJPk3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC006C05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 04:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167444832582.6227.13682071054574024360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f826394f4885ffa0e9e1c5d85d3ed9257a9e65e520cb7d6d06ec0df22a1205d3
Date: Mon, 23 Jan 2023 04:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674448325
