Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC431DA5B
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cP8yfg+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E66EC433C8
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698247096;
	bh=xLI10bmhdb/eGZ7QgBlpe3qxhhle9sjTOfL2sXLyJuE=;
	h=To:Subject:From:Date:From;
	b=cP8yfg+DBLskCt3CRCwkdIpkLEc7APvzG0/oxkHZJry8mH08QTnzEG0so3V3Cpx3T
	 l4gjeUzdA1kHLpwV+wxLTg8huItiDrrWQA98Md6ESJK+9S6tQG+es3n4tnsDrNO7eL
	 fbN80IuPCnUbJnuu4jgKpR2RcmfYZkYy3/VGy7OAwDGciGUWHYjj0X8YkyV4OnqMFn
	 jH3RG/bG1eRi6PCHQN1FUm6UmRQPn/YKakMzhBUVrnxew6HY6/y+sRA/2P/foPJVOn
	 BsgaDiveZvLkj5RY2m8bSvUTbe/zykTpDU1eNOgiiTNvLW3oQgQP92ZvwtjojIvZtx
	 LCC/fanbnmyfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F9ECC07545
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169824709644.32128.17541204081462278726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 021f79264fbb831ded52226252b969caa44fc5cae88880c345f27187a4ee2f79
Date: Wed, 25 Oct 2023 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698247096
