Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7176815A9
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 02:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17BA5C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 02:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679450946;
	bh=D1gjIoJoe/PLbqEIVlyveu8KEFo3r2EG03ZWc4Glo/k=;
	h=To:Subject:From:Date:From;
	b=NHxUn9N02L1uE9XMQcecElBhFnqD3aVPmrlKu74FuEdoIy8WARw4/av9qFzuvWSXn
	 hlH8KIkKzLiQTKSuoxAvASxq0amnsKRYBh8fbjZljHFJpoPXAwim0HwMHy+tGpAf3Y
	 iZVoZsW2yNxN8RKrPYVSK2VJhNuxwd/jHpIJHwf0J0chBr0H4gVrfMbi8zTsi7SXWx
	 AOCPH5M2zS5PuSlLYjyv00eh2XBzDvBq1SbL9Mb8TImlXm6jVa2FN7RzVvmlJgyqx2
	 6UpE6nngY9u7oa4g8rcVdLqTREnZZCyE9wKmtA6Zcaczftac8xdRgjMP4Vo8pGK434
	 I5kOPvm9O1k1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9CFFC6FD1D
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 02:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167945094592.3041.18329090188529289960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ea5072fbcacc7d68e1889c7c9a7cd91cb55dfdb9f6e0383ee226ff317a3963
Date: Wed, 22 Mar 2023 02:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679450945
