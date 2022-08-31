Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7F65635
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A309C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661914853;
	bh=gltJsD3oJvV1KCdFZYBpxV+a2OLJezKOM7qphdFqWdA=;
	h=To:Subject:From:Date:From;
	b=BTF9BRCZK6W0Vu9+9mBeL6WXH55ZkS8f0iL1TpdYEA1vrBgmL/UQnE4SfknKpRtP/
	 n0lTtJd4sbxTBzyEcreRZA43ddkpjzhEul93mvhYzea5B0av0pwGEOyHguERfVvHW/
	 QrlUE4d1ZZmDFZ9DWhlyPNQcwp/rZjW2YUs+mZ+n3M0en/TU5zbdjJMMKIw9iYePUv
	 txz+AhTsQ9vqmHvZIrEtbxDQuz6hAczF/KRK15M3gUGCaXB2BMXZG1tD+pR0KBE8cH
	 KoYz6Hasr2g6v6i/JloHO3tymdAEu/AwQOYrUrn9x0v92UQe1xbvhSGAWB6a5Of+e6
	 8G4oXwgbrYNHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F129ECAAA1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166191485331.13680.11976628451931587445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f6960c007559f24447b91c3d9a964c71cfdc07520414db9552051441fcdf488
Date: Wed, 31 Aug 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661914853
