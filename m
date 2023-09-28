Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2263C686
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 13:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6003C433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 13:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695909368;
	bh=FbAaPmVO7c3niCEdi4CnP3Z0i7VqZuD0Z3EYwFbVgNY=;
	h=To:Subject:From:Date:From;
	b=KL7CbwZsWlmvo8bKHXXhHuyHYBTareBIO8ZrQpyI8rnQKZ08MZ3+exZJyHvVOmjaV
	 uwDzMOWcEiTMNxJx1XYsfLFFC4ee8FP/p2x37QHLBJXhNBcmSN1K7TLMZ7i/UvCqjn
	 opsDFGjA4E3NPbrZKeC4mE7zaGo7ePyhFuYyyMq5OioM4up0Xy854fV2//T74KWSOx
	 0HpgLRaX8YnFX3mv+U5Zn9A2BUjYH5iI8nc5CyIPr1uY2XH1JdBfnO7KPXu1kgc1kz
	 NL9nRBkGc1E3i4PhEYRH2tujLitFE9d7dvDuq3r7fxvI3DOL0/d+Mgi6oF41SSzCL+
	 NwOQVoyBST6nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B303AE732D8
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 13:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169590936872.30448.3392317694210856517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2b9c1282d5cea415cc81c7e85f79c5795149248f5f29c69cf2ed9d71de808b4
Date: Thu, 28 Sep 2023 13:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695909368
