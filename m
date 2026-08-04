Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D33A40F72F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785812434; cv=none; b=o5KOwGQdW/8ZaLwJvvMAaOtdHtUiP0f6gexZCjwpp5qXvlUGtzbzgOVHfjkzXI8Gx9dEau7zQ43CxI8qMidf99xgMbSVcyS9tCMxl9vbrEKEqzcLZENhyivgEzQijEGfe/WaCwYuCIeIppHYJwn/guqRKO2Uy3AprEIdsOjqeds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785812434; c=relaxed/simple;
	bh=DlMxQb/t7vlwzhqn2O4sD8CZOlFGVmS1NSseEk49i8s=;
	h=To:Subject:From:Message-Id:Date; b=mGG61UlsSTy77uv6en3SWPHBFm7XSqZ3cJXvllExiATQ9EkSPUGa+6ELpPdwyNje2sPqXmwQFQGzUis2yyqv+pyn4Dcg3I23/tn03hpgkB4zU7f3POMWs3qLLxHvHh78O/X3sWasI3SgqAHy/DqsmuKPKP5O/Feudsgxdvht5eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXKLmcHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXKLmcHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D1FC2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785812433;
	bh=DlMxQb/t7vlwzhqn2O4sD8CZOlFGVmS1NSseEk49i8s=;
	h=To:Subject:From:Date:From;
	b=XXKLmcHlfHmyfG88I+Y6BSsigeXsuOn1+Ij637fhFATwOkYnJEOmxGyopZ4RppXcU
	 pfnbq3wRFcYxqg1YUvq2+ZTAXGO7xLn2IA1xzURFAlLCqCE93/1NxYTgkarkRSNlKO
	 VP4lBkki8ppCV0DN07xzoSkxli575aCO5ywZNIZeLdmORMFnUMLXxBCKxAu3D5Izbe
	 M1XwOg590g6OWtN7LlaoCmZ4BqClVwVcGeePDyfuu9IJhiUaM6prrtx/d3VXOuqIVY
	 xQXh9bGotF10VxN88BxaFTnpWME/ltyhVXTdhMzlUAYQMIqEi7+aKMjWyaKnOLdNRo
	 AQlXzNp+JZ12A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE1CC55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178581243369.22922.8052517032799740621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 267b6c67d90f71fd0a975be3618a9406b738e1a30dbd75a26a0bc63a67d445de
Date: Tue, 04 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785812433
