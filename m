Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5C22F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D13EC433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669309254;
	bh=XAKzXlE8+PffwSNdIr0GDsLMw4FEwiEclIDFR8wEb2k=;
	h=To:Subject:From:Date:From;
	b=j5Ubyg8dl8SKB6Xrvw9lo2ThBoyNiCOWLQeuLOjnIZwJVCjMlfxo0nym2sr/0CxEh
	 c8mZJLumAytWXkCL0ZVH+xwgWbJJV1dorUiH3fHPNIQvdG5/99P5/VIiJjCU5BoKgd
	 mSDggXfyHG8MOGWRGR2JpLIH1HET2K3wZrstRaiNxMjB9O9ue+Z1TDy6WdoU46h+8H
	 o5wkRKrzvDmaKSyIgT9uVHCsN9tOSdNCSn29wp0Lk1MXCSX38DjpTGNVLkWUUK0Vvr
	 qvEazjH21zDacyW2BuGVNdFtDFv2UegEWRN5LJ4Afh/cujAS/31Ypvcq6Jj3M7DIMr
	 jTVXL5mJjUOmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57292C4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166930925434.24827.6485971770769831087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bbbac35afdf7a5676b6e5e2708f09e60de692c2e11620073cc83b8ae1367707
Date: Thu, 24 Nov 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669309254
