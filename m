Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AC263B0
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 13:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADF9C433CB
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 13:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693401848;
	bh=EMPI2x54qQKsPRD434s6WMPr9VnCcDT8RdzdyedH54I=;
	h=To:Subject:From:Date:From;
	b=mnYy4qtFz/1oFeneYBK0xB9GRxigE460p2mc/J+fCB6HEfCZk0hXD3LRNYGDx43mM
	 p78fl9hwMH5nOCSzErrzNiEcSJTIYgXdTSWo6KL1B8p3Y/DkBSfUgx8TyNFKAtmDXd
	 RhWx74e40BsZiqOm6oNxfs8rQt7NDTrKNMk59oS547reQYsbpFJtgGZQJFBEeiX0S3
	 9lWBo4oKmaLTZaAW1X9D7qwztAoGMalPliWgW03rcw3H0KkvyjMEQ5Y4eBPW12uN/G
	 N+qUboRPqXoNPnFxhQusFQyM4l3MhS97hD5ZYhMC4WwTfiZ+uc/sdxgk79rHfnGLEp
	 wN+G6zi8j+SnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02D5C83F14
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 13:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169340184871.11750.14964848073620115972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b5fa14ebb0ffcfa93bb631c22cc6f02b743f591207a0b7385ebdb16c22c865d
Date: Wed, 30 Aug 2023 13:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693401848
