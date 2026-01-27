Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DC223372C
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769512434; cv=none; b=GWponbWP9sG1ZkHQXakwK9KGu1UN4qY8o4jkPbfJyNYIr2YHX7fskw4En5K9vKzqHu+gclTjpUuySFrg1lvU12NSfQzYcqjVQoKuNoZ/Ecrfb7bMflRP0/Pv4ONFwZ6vqAJWZ+SsZbtNMH3mvze7z5Ut/te8/hD2xMjcysEVAQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769512434; c=relaxed/simple;
	bh=3F7SzCkPv/lMNkjVeUxbzWyIIMr+/87iACsVnYbCzxk=;
	h=To:Subject:From:Message-Id:Date; b=dZjeLMTvauPE/pxXTJTIT0Xg/1eY6erfHO7hjgOIWRlNCSbyjKMtEMIwrh1wLfLNExCC1H5UbxVnF7jkn6+TQdjgRhoPlxXVgryDJZSH8lEMtWs5IZG3xHjLjcgbFu8nbJgeIUbIaUiLRLN+gMyqbHnxCMu1oBHRhD06CVFPDrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqIyL20p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqIyL20p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAD6C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769512433;
	bh=3F7SzCkPv/lMNkjVeUxbzWyIIMr+/87iACsVnYbCzxk=;
	h=To:Subject:From:Date:From;
	b=bqIyL20pfP6bqJLsfN0fMbBLeZcYLKub1CH300FT+RQkm9crlvA7FZUCiO9Gry6/q
	 jj4RWlBw1Knu9MtCA17//Sj7HLxORzh6oHWm2e4X+HVmXkyfMJtOYRW2wGXMyqSdeq
	 LAP+2VIHxzDTQpMER/jxYBZLGUQIS6DwsDsf0Fco4sqK8ffSSCGCCixeqxaaiGrQNa
	 OZwgU3PaEhhUA6xJSw9qjq0rODiheXtWS/ijq88/FU44etmIXSgrxCqPj1++fWvdSR
	 ffuzWPY5tvRpxOjVx7SszioP4Fw12wYV/RZC03CjK6CHfiMuYOeD4fFkEko/sNMj7s
	 PKjdOTqPJN5HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9078CD2D8F9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176951243358.31891.17563997735859414789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a99d050fce7142bef0f9279612639ac778a601ec058b6804df5ccc4fb1f36435
Date: Tue, 27 Jan 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769512433
