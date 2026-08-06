Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558C846C836
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786018234; cv=none; b=KxpiEOUZj+OLkUJ/Nn7AjCNQ6qMtqBQI6UwWrci7gO+7C3ZBNLWsMeihGKjuuFJ3zED1zo0hdkv0Vde8VDa+/4q0qkWLjNnBSCHQn0SXLSNGqmqQTTeSVSCJNnCzRm8+VJWlFOtDeE8q/R9Xv8haSeILFgOpmCG8BjqvEEVeYV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786018234; c=relaxed/simple;
	bh=cqJLw+z8IRTdr8jDSKXW8ZTUKDL4Z6ArBFXPOlckHq4=;
	h=To:Subject:From:Message-Id:Date; b=qUixWASySYUK0PPkg52sDxVfzqMlD1bnWfG0zfoUOTn5QEzckoOHVOLipC++aAe/+Dnx4vsc5rtGvVZsq9uOg7j7Hud8aEUApCSYQ8YS37fbyoPgDRzh5KP9G8bD+gQX1wd5FPezKqlmIgYbQu9YvYUspOQTj0AB8bCEEVykS/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9TwWYLl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9TwWYLl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E82A2C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786018233;
	bh=cqJLw+z8IRTdr8jDSKXW8ZTUKDL4Z6ArBFXPOlckHq4=;
	h=To:Subject:From:Date:From;
	b=n9TwWYLlgrgG68dPdu5x11s4RMGAnDnzYfUUK2dr1vObXusxiuE1wNYzmP0N5BFkn
	 k4D81orX+SLlotESYRPjL+mt/XH2EXkjmtA8UvQIRqpuBz4owtbt/9uQUOr9SlSQSy
	 yNpPXNF63t8YyjDACToUwvi0XSeaY5qfeFYmgvJ6c2SCgDwHiZNfUvoEIacljQX+9R
	 8x5ME8njvE6rTm7omISkucQhT8hA9TOccwnj0Vc5Bnf4QT0LyoSY1fNep1AZwhvmDa
	 LKshccR3jPAQvb84NRC2GOC0eQFKot45ECGt9a/ycmvmSEOrxsTDgwAdsb6uJch5Cu
	 SwaJcdGNJEkgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC34C56205
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178601823375.8685.8453717850605531943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2abb26a0ae075b3f563bed9882c79c67fae438d35caf547da5bf83e0ed35527
Date: Thu, 06 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786018233
