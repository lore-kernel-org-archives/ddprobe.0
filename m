Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318CB21B9C3
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747693795; cv=none; b=Sb0PGO0hJLr+pNKvChwozfc0LB767fzwSOd+n0JwYEIt0/uJ9pF5Z9+5EBMm7k5X55O7zNxgsWg9x0P7Avo3bvO9MPYBdYY2HEOQqozh2Cl7foL0q/OtZK+MCHJa18HU7wf1/BdX2yaPYb40DRr3eTVo0TqNv4hQ8SBY/7YRQ7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747693795; c=relaxed/simple;
	bh=BSgQPVQQiBJoZV7mDISn2waF6aPP7dykPQcMx1PSwr4=;
	h=To:Subject:From:Message-Id:Date; b=mgzavuQkJkkw0+xpDzUHKyLgL/lUzBVoE83hHoJc99TBgC+PYLcClqB1VkYXKnGl3IROCretvySXjcb8JRofCJMcWlglJPDA4yaf5uI2x6kNJ6QfEHDQGaVB09a5BuHN3eMjZKHulxONtZgV3NKPI7EaQgwJAUIfdsuVrsNrJOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uj8Sdo9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uj8Sdo9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAD1C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747693793;
	bh=BSgQPVQQiBJoZV7mDISn2waF6aPP7dykPQcMx1PSwr4=;
	h=To:Subject:From:Date:From;
	b=uj8Sdo9Jtj07DARtGNf9HyOGzzQnt1bXU7jUzxMys6WhwwdBvjqq+BtnGTQNAVopw
	 TfXiHaoRWYT5cFWosEcNReXO1v/Yz0kdKD3vTwnMd0CQuHknvU9lQU+qEdyk6ufL4V
	 fXl+jCU8EpS+fMH7qeDDsGek+X7MYxda172bHur2SMP21b7QYQeYbp+cgZeVG3+ldM
	 oYXmwDoMJOuTy1guDDSh3tkx6gb4sQ3zHFBrq8y2bR0PqisrLaPLpPuR613bKmX73/
	 VgJppUjqRrnL01m2aaRA7n/I8EaHj1hZdSok56qaEI5ypdXibxsvg2SmKdcxFn7Of6
	 SiedCkZ+Q4c7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E78FC3DA6D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174769379357.12215.16352619838660672727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: debf89596d7adcabb087f036ea8c5eb957be13170db78dffde52e5b66ae986e4
Date: Mon, 19 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747693793
