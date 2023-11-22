Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFDA3208A9
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UnIXtupT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74605C433C7
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700693296;
	bh=u1AkugINvupol7A/xI9GKA2EhUElGbiU4n9iVVH7FB0=;
	h=To:Subject:From:Date:From;
	b=UnIXtupT24eqxQVImKX7FCnMMkiJehQP9ahli8hzfA9mzD+Hq4uQs9nwRoCoMPmTR
	 Gt5U2NftAd8mnIsfF+BvAXEasbnFEz8/VYHON+uW7pYWXOD74k/nAmGvMEHxPdx/aq
	 bYE4mrDvZVRM13fdg65LYPs/G/nKAbj73jCNBlDoFW+KW7rdcUs2yBpnozvmyfVqiU
	 2yfVAttMrJ6pwzJJxLt6wTkOMTKIPcbJeOHTsItsUytvqAb/jR7nYwvtGUSh6wiPjk
	 Qw+JxjALH3sXdUMuhjmejuONMLK7XrqFVwlF5yamhDLBn1YYilbNA8HUZafBZUXtga
	 nLT6tywDbZULQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CACBC27C40
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170069329637.19244.14797338282005984877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c0c300fd14ab4f7b3273d2beb49960a220f65fbeadb6b48fde9a91d53469585
Date: Wed, 22 Nov 2023 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700693296
