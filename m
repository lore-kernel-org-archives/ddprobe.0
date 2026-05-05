Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD9723BD06
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778002054; cv=none; b=tlMfyQnbUsJW+iZdKcgXAsjtwBoGjtUz7/gMIaVChXNeSgFB7HCEqaB7bJnNIbv1KR0PHTqwkd/uxN6wrdx3VBoTjlWqSCGvqv73ZmKiNQOkh9bMrXqWSPzVXh1kYMc34p/20C3fMf5vYGRDVJP2EdNiSFek+hIFAIulKxdXKVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778002054; c=relaxed/simple;
	bh=Xhh/WX3Yid04jqb7F6QbYV+5FqxTC3K0JYHN9p/IWb4=;
	h=To:Subject:From:Message-Id:Date; b=eNW9OPO0cPNVKitqnFNAZVpCIpBJKB9iijYdqyV2TL+UCgjf3uxJw4eTcDg6zeviyts+h+2g7xMO6u96jgHfW3UtqjqeJKrBXmAB0jVQNyfaRR+lwKiQ4Gj5hSbpWx90vfEu4+we9yqYNCbFHQcE20N0IkmA47H34S456ODql8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEtg4S7W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEtg4S7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C012AC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778002053;
	bh=Xhh/WX3Yid04jqb7F6QbYV+5FqxTC3K0JYHN9p/IWb4=;
	h=To:Subject:From:Date:From;
	b=cEtg4S7Wp2HqS+fnzu/4vtmz8Ko8TTslSK7/0U9COQx/Z/zSjQ0k6v3WXzYl90/dz
	 28MMhmWt1tsfr+hByzJBeXlBs0rw3QbVnwpDfW5jeHt2iM4oi0xAqmPP12hoQmf+5p
	 ezVGVGAzqbiBjVcwp37XvBdo+n6r8qXdiq4lrrwUs+AhxBJaB03ZtfFAPdfKGRo+BV
	 C5tsN0GnYeTKZme05/uwyztyPy63OaJqzyCDBqyhPxtGPOij7Onb39wZHFx0qxRuSe
	 Wnk0wJMyQTQbgsspvwyY4u2fy7IsqCUy8RmB3v7mjN0v9rRzmewm9IS66BhoT3qg6z
	 lTAU+VzUdIceg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD204FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177800205369.23177.691279285602960920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfcd68d8bec2c8f1aad93e4797d9cc08b1e65014695f30957f98a2b7eeaddc63
Date: Tue, 05 May 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778002053
