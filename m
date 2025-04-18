Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50902528E4
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744948793; cv=none; b=rpD4d6elkn/LoKozban7im0RXdY6msdlQK58qLIA0T0EcFhxaXpV7TjS8bmWnqQ7h+o742eoBF+SkGfeVBZhdLWT9pGt0LRUBpR3BR6f3w9UXKcH4LOT/IaeNS6a7mHzsutdKNQZIBxGsKBohvX3XbYDYK7jvZRW//6U0D7mAwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744948793; c=relaxed/simple;
	bh=pSf8G2Ker5DqvpMJ0fH09hc/5bpQH//2u8SW2E0S7S8=;
	h=To:Subject:From:Message-Id:Date; b=H/PKHxHKNfY8yJVTsu6yBOT86SoUTF4OTxejQd9GtXYtUzP88HNd+mJJJ9A5ldVp9QTyReuyxYq029eGmWmO3nCNxWO2iUrvshEAK/cHRsaMFczFxg1PQdzZMQZNJkf9qk6HJkY98bwo1kNpgRokR4blA9tFmr7VtLHwT4KnzmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNyu3kV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNyu3kV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A835BC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744948793;
	bh=pSf8G2Ker5DqvpMJ0fH09hc/5bpQH//2u8SW2E0S7S8=;
	h=To:Subject:From:Date:From;
	b=gNyu3kV878BTnTJjVNOBpKKvN869l//D9kqHxBiRify/Jxu1xfckUWBj9DVWLhafk
	 s1IwhNJIDvzV/Pxa5vk1IYEcgGmwmjNfEmnWlxP7Mm7qD0jpmR+4LYMBEuZlqv1wDI
	 kI8/GUTFDKeHikCM9SNJsGKbphcMFeNwpe6FSlZ5bBS5qfQPxJV4CYnE2tfYjhnfKW
	 K8rRTuXmMkLh7bjlgqjoIC1ULG4lC6uwiZf/pTVEhdYbL5YfLblzKHfxMQsNhxwm5L
	 x9tnfvu3q/tniCyyQtjjwjGDpHxHQ+4MbbxQgmpyHMW0is1+xeK2sjW9bfRaNhZzbq
	 axIPi/QjE3bxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ACEC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174494879360.14948.13046085830925009835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58eca414c8dd1b00ba755af27fe69ec4f723a826122f7f5e95ea6c30b1aebc39
Date: Fri, 18 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744948793
