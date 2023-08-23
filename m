Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1D31F188
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 21:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DD1C433C7
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 21:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692827048;
	bh=CWTFUKhCqAmmUcOr2DTCv3rbWR/f9FVo/Wi+n7R0rsA=;
	h=To:Subject:From:Date:From;
	b=oP0zm2g7AxsS0TckLK/lg2JqTnAXweZxxe+J4mKDKGcM0ovHsp+rwo696DH8o8gSX
	 AOQoPs+Pz0GH3EApad8FwNNuy6Od07NhFqlWlgBlygyIIZGdc9C/hcScZIaurCId0l
	 h4CNulovCXeocv6K89dZa4nK3dZxtcFJT/TMyCYL5+51Oism/9wYh2QZL/7oYKLII+
	 A24nz21QBCEll/fvhmYKMsbBjwnpI/j21CBiruoLTrwS3qtZ+dd8AmyGMdl1957/bO
	 CLJONcmnC3mn3Gp9wWkzRyIssOBGMXzF6LvN1A9uoPV3rDAcrN2zRAYMzWxBftPnSb
	 QKywNGAEvnO0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8363C3DA6F
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 21:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169282704868.9300.8234144724312324210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700794021f92b0d3ab7747be2316e9fd756ebb7904c6bcee24d11b5493fcbc95
Date: Wed, 23 Aug 2023 21:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692827048
