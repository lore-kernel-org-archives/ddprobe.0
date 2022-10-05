Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B145D36C
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68BDDC433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664966453;
	bh=4by0ZE1cN30fzQhaOPVmrOJk/Y8YWM78pGjkWHj6s88=;
	h=To:Subject:From:Date:From;
	b=mrsifSN/5ysMnouZSg7fsuiITy+dEmuPeh12LTcxFN8o9kCPW3i6klaOwK1ZVruGz
	 lxnhedBJP0AqsSoOl5QAyhE7IgJS1UPjKM5VVeU3p5ao/qNWy1WQskLciheRlyxDU+
	 ehByzG92ZFNaZ7R5SExrMYyi7inbl8PqiGUbXMDUTjO6+ckCwHdBDqP/oWa++2MvhR
	 Wm3yU0KhSbsSw50QzCFKan+jryBurcoLSOnDMiBo6MKScSUqrtgttexjBKvsleuooq
	 mt2kZZhC6CQGFZePleTwXMjHqFHrnoEVJ0zFhI19y20brG4C8JfL5W/VP2rgLYHM8I
	 b+EpyMdn5aiMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F249C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166496645331.26057.533460773298058237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f841aec77306e6ee3a92379352071e49569997be4c4ba6a791ff2ae518481f
Date: Wed, 05 Oct 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664966453
