Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01AD9A23
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0444C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672968687;
	bh=3s8PnoIgH87qafrA/TJbSpJvhO3tr+sZQAmvQhV7uWI=;
	h=To:Subject:From:Date:From;
	b=RtPcEu1dgH6B4taR9NuL2StyffxQTMxoIJ0G/SMqV/ixi+Ve6MlcSLQXy/0VNI7BZ
	 gMP1LXOyGq43IT9EijrP53XEyTwjfETwu89LtGEgaJp/X9Ah/aqWv+oVA9x93Zhy3c
	 kG1cTfbz3Uv+sgccnMNUOTqF9RPpf1N8uqPWOP4pozvEAPCZUw/rmgSUJTzb6tEqvZ
	 mBtCu8AQ9cEEiry/noxlDSpLnRCRWsS5XtzY02fBzkTlTcqHTydp5wKhlOX5Cg6JCu
	 FmKPu77PogIXiIWLeFctntM8ai2hVis806NkGVmjTpnjK6w7VQuv0E5Cd23rpOU/Uz
	 Tq3kkd36VvkYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 774DEC3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167296868743.14818.13852994787196801832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a174c3cec71f8b9c2308fce8f8573039674a3e50076d574e16a6d1cb34fcf955
Date: Fri, 06 Jan 2023 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672968687
