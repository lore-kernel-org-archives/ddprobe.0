Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDBEE1110
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85777C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672362087;
	bh=kcGbGNMBVLlbxFyzBcD3zRzjhGrvsgX8KK+LI4LhG/w=;
	h=To:Subject:From:Date:From;
	b=FoMLGD+0lqp2MUrUOo1BQqIjcHnvQiY933A1vBNMfKoSbUs9nZliO+mFWg+RtG9K6
	 pm2oBJtYXDTWUCgDTlQ3P3jkLRqtkhfrEJ/qg0vosb79Wd95lX/HqUywrNgm6Dolqn
	 GW2m7kU8P4s1K7W+LWJodJ0O4nsk9H89TLSZ6RaYZEdQO7DkXZS3JDvo6vz+YHugg+
	 dmWP1VEKI/pykVlv26xiC6M6RhAHb1ZZNRh6mG/xCNuI92EukOOAzo40Teva/4525w
	 0Y74i+4V7mZSKc8fQptg7aAxMfH4sEUvtlz6NTdzi92ZJoU/Xo7/xQAFrVxo4SHrBC
	 ksDj5CdDpj+xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E924C3DA79
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167236208744.30471.15806479669157617474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70d585ad98b57130c8f645d1a489b1248370726d9973ea8e46a811d801acea14
Date: Fri, 30 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672362087
