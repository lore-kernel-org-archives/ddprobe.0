Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8FF17EA
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9812DC433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673473287;
	bh=UC7YKCTzEXTKoPecu/JKQ3Xm9Q8jMIHzDkxLvFTAmSg=;
	h=To:Subject:From:Date:From;
	b=IncoZQQQT9tAQk93x/WkJ7NUaxMh0m1nyb9jpxW9IWxQf/owBDq/918dhtmLesVXF
	 tFdcuhYWmZLZh90AoJdf9UVfK2RKk9HLRJZ9H0pdn3rvfqAr8ApZMX4r+vBFXG+M2X
	 Cger5dUaZYnYMxpGrr5bZVOYSJeIZcoTL9Xh1TwVhp4/E610HhxcvPLuX5IjTwAsSE
	 LO/1drF7wvYOpAVTKdnvwGPFIxrSJGU4P7fmzqUFYdJU1S9E4hXcZXtihQEP1PTuwN
	 ZWOulHnU3lmEfeBdHa2J4AmlMud/Y6EYRLux9SOFDb/zs78oshPad1Bm7XL5kIVpxw
	 Jrs+pf/eQYtbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7366AC5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167347328746.26841.8434274801858773805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97154c3ee0d283c730af78cac34310bff6521105e3cd046fbf4b138ed81f0fd2
Date: Wed, 11 Jan 2023 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673473287
