Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1240C1F3B85
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773380694; cv=none; b=hVXQ1qF+5nQAenoKUVWt22VMWnzOky36uXh3cC1Q0p81D/so/VgpvaCu4Aejjd8j1k2B4S1rTxq44L1HNQPQvFbwlX8k/e7VuVJPYW7VDuyyQqiEJq6JzZaDyL49qKnENElFCPkXnIL5krb5fd4ava1nSIRGoi9iVOdb0j8eAHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773380694; c=relaxed/simple;
	bh=jjB4Do2lEt7flzNoX4+pS+DUsLWuK2NCDxZuK64+tuY=;
	h=To:Subject:From:Message-Id:Date; b=S9qJ5oi4ll8tHe7cTuXorpP+MyOxxb5xHFTrnHlCKPd0jXJ2Bjf58i/W15jSsof0aFmcdxsXEN01LzkJsXCPeDSKHRKBnvN9VNqGVYYhOzxmj4RPVOp/khmIGbiBtgwS0xEReQ91xlxTBjfousqPh0eFT0ybUyi+F7dRnX7wq2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFGBqcmj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFGBqcmj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E4FC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773380693;
	bh=jjB4Do2lEt7flzNoX4+pS+DUsLWuK2NCDxZuK64+tuY=;
	h=To:Subject:From:Date:From;
	b=FFGBqcmjvPFaeVYPJYWDuq4sFno34/9y1yZBxJltZENqA5bljxwZV4ZcRjzZjnS5G
	 d6wrNhQsuLhd77zKwWaFGjv7iOOTdXZ8C6Zb3Lpp01NGyB2YptQzMtcOMWF0Vu5fy/
	 izeLHXB6FEDxyWEYBTSKDV8O5KslKpL6RZlscL0AlEWyA0cfnye3hOwaX1a9LrjcTD
	 dQ5+kdKPW5QzDe+ddcjIZrCELleDvh65enToiJKoNB4+WXAkF4cPZXTvPPtziGSWEh
	 7tT1JS6BrYZOToRJvXrS8/vDs/yQVjc83WX8n8iSKTT8Y5jcsM81g9bSAuxxuMEEY7
	 EXdio4XUOrN9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B7E106FD7F
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177338069357.9732.17146309702517334482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab0244f68366ece5bf27e88287d1193308775145f2ef60219555178e2b57ed6
Date: Fri, 13 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773380693
