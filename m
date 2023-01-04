Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D080D7C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E5F8C433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672805487;
	bh=CDo839vGbYA1HUvGsQA3PAydoSQ8RkSZLbt0neWR+RY=;
	h=To:Subject:From:Date:From;
	b=gvHICyMk6thERe36uZAbdtzVkezj2eokYEbXwPwLoe9h//nZZvWn3+3peudaz5HlN
	 NnTRgKw0hG3vRneiKdlfVc/xdOqgjvOeppdMkCGUKB/WGw5IfwYieg8vttEDNS3eEs
	 GLq/pU9YjaQxOj+FH0MGNnbfiebk8ejzyO84Jl0QiYJLb28i9rHeJPeM1VknA2Dv00
	 u0NwDFqv5kfzRS4uaw4FaVOdOlUr6Dtc4rbDjn5fO9DHO7o+BBamCqDmJ1/mFQUaiU
	 rdSJfSw+RqlESa4r1RjGeHTgrfHrOuVoWQwe2a0rQXRa8WvZBtuIl2LYGQocLyg3L1
	 NpHjOdH/T+Dsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66716C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167280548739.4117.5436871710409652071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f58ccc055041fedde9e7095709aa0d0f3b639a585cea7bbb0a7bb574c65c67
Date: Wed, 04 Jan 2023 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672805487
