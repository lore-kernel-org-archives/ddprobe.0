Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E303F2CA6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84F20C433F0
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670709687;
	bh=KCQHnDkR+RgHW6tXECwRe5v2giLJuZ7nDhjtnqFWgJk=;
	h=To:Subject:From:Date:From;
	b=rRkJDYOsJ4dvLDb/ziOmRBFEuv8KKqHF8//r5S/ThnVTZp/5X2c83MsB3V4egNGWY
	 D6+l1juh1mxchX4TSvnMv6YXUo9dq12xlPe1XBiNCJ2B7w/Rln84if4gTvZI82hqXl
	 24zGkWgdSzEa0mpaPXZDYzINBWd681XLLY66t5Wobh7kygP4Bu8n79DBXZIitn7BsH
	 RZcgcoT2nr3nR+1SpCiMCc6s5bdbfRlpFOnnU2YZ8UaksjzVnEYMDcwfaTR5BWLi7W
	 ZsVFb5idWCSDJsc6OAYlTYpDW2oYI/IXbrkoI8Xggh923AMWfkqK6NbcPbZMWEOIxE
	 pwajkZawPGlCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C908C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167070968740.17962.13090429073811227147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b8d3bc8edea5cae64b6da1f547a32ab843cee4c3fb26917c894bdeaf418785
Date: Sat, 10 Dec 2022 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670709687
