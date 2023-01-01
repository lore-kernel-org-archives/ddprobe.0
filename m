Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB2A1FD3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80BEBC433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672558287;
	bh=bmSqr+mMfKLfFdzDtEnlAzVgSfS6J0rS9kxWmuwXHts=;
	h=To:Subject:From:Date:From;
	b=eSs5v/aL4VFytXasA+ViDfs5pcOO1ek/OHylqai/OnVrPW5Ll+zeV/YYVud4BoQsz
	 heVODEFc+b3qRvmT3m8NZC+/SFtxsG0evfcUojHaOH4fcXqUcxVnz6AGNFN49wS2Ar
	 6KT6+YFrhtT9kfvEpHFcUjbacI2IRtFBi8DpWG5zo+7JFq8A79ktEtjJ/ky9M1WUnC
	 3IIx7jrdvK7PKKx0ZplmKM+0Ooe+ReQj6ethsJbklfrj6HVBSmkSz0GLkZIo4v+EM6
	 k8ORp6q31RGTXTNz51uAwGAsyrtx/zjsd4Fb2lPe/r3VGIsUUtJQG0VwqAoD0ePrkr
	 U5u7luLv178Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65417C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167255828738.16158.8132240884632128690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a745f064ad627d54575ec5584f9a4af1aebed9f3f45c369d5ece2aaf6f5077f7
Date: Sun, 01 Jan 2023 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672558287
