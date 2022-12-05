Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C151E612B
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7233EC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670259054;
	bh=pfaPhIQSlG2QMK5fCgLfBk8W9xwcBpBm0Gut1HwfRSI=;
	h=To:Subject:From:Date:From;
	b=gp7t7TUtjPS43nfW6iWtjCe+JwKSekgFzOEG7/5z21hEsXWBkXyrfzSn06FGZsNZ9
	 I4PIIZQSFvS+MrXyF6a5R8Gfbg4cr1izzUIIRPPA397SsGGWBuSi2yW+04hDCyN4jK
	 dbmr6ZaQl5/80wHn8eahXu58i/0c9OumD+ynA8G7rrGMn11dEFuhRxeA00Cd+6MQLx
	 we4gGvKFQEUf6nW7NU0Ry+zF5mkrJSPjOmOsfhdeHVIwNiewvPlF+2NDf2o+s7JQjf
	 rbdz8dV29m1LQ4lUgHR8nSo+M9Lc7jPbo3DxQAez4rJPMytkbhhOoqd83oodpxyigf
	 ihQntcIS4qKdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59D4CC4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167025905435.5547.6285610304029472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e87dd97ece65f1052646277d9f27fad7d1793889d6d6cde3ad30bf6c9b616ad
Date: Mon, 05 Dec 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670259054
