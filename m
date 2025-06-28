Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243A5148838
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751077794; cv=none; b=S4njJUEqAxCw8FnRLtGUyV0PEUv93AJtyekii76BhfAb7T/BvZwy+nxgxM12DRUKMyLyCNSfAUi/Dw6k9hJe71j8kF6kmrpLHN0D6l6dGxjc+hTa/v8jb7EezjbV5M7NZRQX760OIWFy+o29WWcnFnE2PQSunrXL01/TE/5YCLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751077794; c=relaxed/simple;
	bh=z8kqv5JEiI/MeX0PculjoQIHmRK0IIAeOX+3wiAIYhw=;
	h=To:Subject:From:Message-Id:Date; b=kSmeF8mTguU2axsaG7aiOLzHT3Uyp1KN7tQEEwuI0GbPTpgy+hjGGXIf369rPEMCWnPPGcFEv8QUlnBYX7/emlbDZn5e8jv8hx3DuUhRhYuPvrzHnErrVYI0xpdecINxllv/vNVwpqcSg65P9zCpmhs+dCKvGKrqZC0eOLGBDRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qc1Q0YPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qc1Q0YPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A409FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751077793;
	bh=z8kqv5JEiI/MeX0PculjoQIHmRK0IIAeOX+3wiAIYhw=;
	h=To:Subject:From:Date:From;
	b=qc1Q0YPXb+aRhZAS6kzxLilbR96Lq5whcwmaxLgrguAqj170eMZUUjWWvS7H8GZMa
	 DTQGyXhbVqRJKvB/sK8XVs0UZSIoPUg3rVIf0q9heC2wmP6S1m4COr50NcrElD1160
	 /6AiIWmjZUIXzxKWvVxHTCqM0J428Cm9n1ScFb+9A73mFGbwg6fCaoETYXzjblZiUS
	 5KLhBdkm8f2lIGIEOzU8JZIq5kT/mdARzbNKtsR0hphXM9nKyDp+uiSBQx4LdKgj9f
	 oct7MHeBN/kw21XxjZ87d+qCI8LgUbc3+w9+xoIycwYPE/MKzIaZx/Ru3AMb1+UQ/z
	 mnJssN7qSLhOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE1C7EE2A
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175107779358.3786.12442931430433603798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5df46f56ae73d72cf219818145048fec72bd3a22e80efdcd48905f7ca89a305
Date: Sat, 28 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751077793
