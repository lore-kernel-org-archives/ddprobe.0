Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5B122F74D
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761087594; cv=none; b=PsYNhGtwqBhqa/ANWfYYFaddsYXTRCtfZ2/w7qRGQhvDC7WOFnJCSrsNnDdOCjP2Qj5BvpatR6LVvVoibHEffokbYkI9LxNuSrXLzv/TaTsxA98mO6LcfhufAYrNRj+sN0nmVYWAERy3boHGmcvFc8z7Icoxn8KYwCRzaTDlSas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761087594; c=relaxed/simple;
	bh=my1Gp9/EIpUXAp0ZwB1tWvk72Z3J/QqBbIlBbAhcZHU=;
	h=To:Subject:From:Message-Id:Date; b=PmPiVHGRAR1rgdXlsv32SkOICjwSa2QJfP76Qq58VzPZcG5yYJ3LW71STixO6MXvXQ6ouyKS2ZpcP3Vb4pOyKWpukoQaMRveJBPDijy2cOQw+ZhtfCv+VN3NfNUuX8YLSmS2c1qkqkx9NhhkPY9sMQW8j2jTYlBP8vm0VRSg094=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5BZ0C2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5BZ0C2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8874C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761087593;
	bh=my1Gp9/EIpUXAp0ZwB1tWvk72Z3J/QqBbIlBbAhcZHU=;
	h=To:Subject:From:Date:From;
	b=U5BZ0C2DYblz1IxIqajReGLxpe5kHrVx89+ME3fQVUwlStGdHVBMTPcITkplLqZLN
	 fmjcbb2AEcBJPnH0f1djujvO10nPaJ+k52RqCAzm6G9wHz1gAx0T0RihVWU9nljQei
	 S1fS9gyot7ejKIwomdtGXldbcHE8fLiNU8IyXNnL2FfkSLt/z57QzMdRutwY4GdtrI
	 hqdR8rJ8tX7aIqPlwf49aEz2eBJkrjlaLKVvCRQNhgMIVwHZOd2B4SwGMX3U0KOcin
	 6ja1qhAIGdUPHC+kyAV/O8FkesFkNbjiB5264ZjWwks18Msce55ohKtm9repVOSJg6
	 g1edgMXFzACww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E64CCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176108759358.9682.116474738765937817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77021e4133c41f3b1174b86e00306a4c998482b341433860fe5cd7ff195b847
Date: Tue, 21 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761087593
