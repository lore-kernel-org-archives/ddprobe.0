Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4ED87EC
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D378C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668942654;
	bh=ViQ+XaoHF73hKYDO6WICpPIfxoKVWmU9TPJuXhnf72M=;
	h=To:Subject:From:Date:From;
	b=Yu9o6Es84kbqSKJXJJhINQ1QLrqF3/+MtN6Vtze/7VjTv98ZKebyy9zUhvGTHnif+
	 zNj8e0hYnuk0nA/NHyWVNaT0RNLYpkkN0qdnsIvzNhoKyO98VFHYe9ZvasfrZQCnm2
	 EGHvu1Igy7APOW4iezneKp3x5EIUpwCXO0v8TZRTMN09pMlnzCnogWLyRl3gLKtgXp
	 ZJD9s3rwoP9YvPON06omlPxV8QdIhcFasNdfDj9Vvkvq497zqu5uai1RpvltcpqcwC
	 E1kiMHuN4NLnULbvYteGXKim2U92v+cLFC2MZ84nDme0TviLSehY9oJ2z/dV80nFDc
	 /sKDfQy9/7VxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57627C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166894265434.19364.10847563829496688483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6624fa1f56a6729545ea89b2f0530e2b23c1d7081bb120435bd0649c664af6f
Date: Sun, 20 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668942654
