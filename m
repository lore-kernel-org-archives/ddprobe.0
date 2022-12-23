Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDAE5195
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81735C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671755487;
	bh=YdO9s0+ECpFFYJhZTI8QuEP8bn3ZwCoD4Fw5xYLJE+o=;
	h=To:Subject:From:Date:From;
	b=FADDaIgHa44D5JXBDTzXS44j8Yk96qvKrRT5tqMuyOXbOwWZ/hsw2h1pksPGrSvtE
	 uSUrhPu9uVLeUD6O2/rRvjp4JuLbBYiGH8T5sovxVBCwLrY4pvZCgtaDEa1P3Ox3jJ
	 htjqNB0pxZJONy9x1FkKyP6mFsiFKCHPE2mTfTcZlI/TDrEfHxUfW6eINh+96KLLFa
	 wnUH7NAHRxrjIffXSP5CdejytkZmoFMLqDhmYCcE7CQ2+c2JcU4SA1ExCHHZJ0cEqB
	 geI34n1jMJjInP7+7iHee37IpZCZglwsrCcq+hhsqa6a6QGp17q23HWYW4VQ3dipKB
	 GqDCxJ5xyUjBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 673E6C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167175548741.22345.7200197206455812460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee3962742b8c84c7d036111e9b623c52afed00c13dcabd8b1bd161782c76368e
Date: Fri, 23 Dec 2022 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671755487
