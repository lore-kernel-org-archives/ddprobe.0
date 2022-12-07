Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6378361
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A56DC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670388054;
	bh=YBC9QX/kMzqJUZIMUKhA0AiZto/lmbSM9tySbIgLwkY=;
	h=To:Subject:From:Date:From;
	b=JSn5fplVc+ocN+KngA8Shss2QdxtJImh3qWFH5+gldms/2k23WW2PQ3PFsxmQ2e4v
	 uz5n9bzyNApFRYJUtvgPE0Rgava6LcZAjHrHOcv+A2McYCpKrwSuNUiaDn5+DBwPF5
	 KWpOHSZfOKvh2iSH05qV+s50wPwstFHVqO+QaeRCvKU5gE3zbEn9BDK+xWbSl0RnNM
	 u0k7GBoA03lG8hJ/dIHoZ2IUwrn13r+h6rdYBH4n1UekdlBd0TcvNV9cweakiIE65f
	 iTqn3USQIbifoP4tfjHOQQfYPvDst5eRhqjp3p4K1lG0VamQTuXMelECaJoj/DRhC6
	 QtB6CD9+hIT4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B60C47089
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167038805434.2544.3070556096896837483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 699a23d7e49506a76d507e15ca4489d902f2bf598233181020728bb5029335f3
Date: Wed, 07 Dec 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670388054
