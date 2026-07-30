Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E41399036
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785385834; cv=none; b=WP3wVuQ4q4tSEopOBGYsFsJ8Rzp+K4r2jNCacvTzRhELAveqFyuhW6XDtuyVGCyZyjcIJLoYgQ47duOKN1/plms7ee4VHEQekDORfbRSwR61G07sdoIx3LRred6ueQe5xmmysN64mt79JV2+WejE2xMmQnn4QLmioBu4l4MDMPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785385834; c=relaxed/simple;
	bh=XdL0hOiPzjRfkMx2X6cLpNrLRlxqybfDgRURp7mlPlo=;
	h=To:Subject:From:Message-Id:Date; b=SFNIKbCbd9h1msfZXTYgSasRvavecR6Qgbmjgcy/0w0bxze8YdPa4GVhVm8oqDdZyrwWVK87YLN90lqIofeCWMdeF+0l2CV/CKveLjhC666+AOdGZNCgkAHLcgN6h2e0XKOieYH+OUNibG0I2Y4YcCPKupOJMsOdd3iKQs4XLHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdpDFW3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdpDFW3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5E497C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 04:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785385834;
	bh=XdL0hOiPzjRfkMx2X6cLpNrLRlxqybfDgRURp7mlPlo=;
	h=To:Subject:From:Date:From;
	b=TdpDFW3J7/eyJWlyRwsP9PGs9urXOsZFYGd3IcfqcKllzzcHLlUeTVaHqazCy45nh
	 JDuzErXRgdVuZpUcElJB9VVR5FgK1vm95boaUa0D8/7MfruPQVwXlheI9ATeaHJ8Zw
	 kALyN0/T1KCW2AMzrfdgorhml5A2AYt73KXo9hZ459O7Q0c9vk+uEgA8b3MlCW+8BZ
	 kYlnLOpM6cB0jsglqTCqjippeQLkZjFbzJqSka4ocZRgJLk2vLZ61i9/B5vZHJMdHt
	 Whdf1w+bnasGYkwd6UjU55QlTJUImxBJfQz9BiHW+YFpUBeoOXnx6j9lmMM7Kz6en6
	 nKKFQFsGXU2dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6FC9C54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178538583387.23366.3962098710353825785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9346c65a581fe434f4bb1e496fd98b78e9b67982c86f69e2f2b9de71c4276fb
Date: Thu, 30 Jul 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785385833
