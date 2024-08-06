Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE1438DD8
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722974754; cv=none; b=kbKTqexjj/NnDFsBrZNdX254STwKhvG/NCNZ0qVV9wYvSRB2tuEIvnD9UDsq/TosQExiNLBgu9LaKge0STy87YYm9FEOiP844T8yGUSoPr2SHn2DxrR325y+2gBLpHZpTsqrSlfgjaVmJvIFbMP8vYEFPTC+Vi0UzkHD7XQ8WG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722974754; c=relaxed/simple;
	bh=1wgVXruvJZa1HyRein/pvIVc1fchDxuGjDE1hM8cH/w=;
	h=To:Subject:From:Message-Id:Date; b=T1w0f1YJuqKOdf++GI+SigwzK2l3XRF7jDMexnEWjGBGFoXnXoa19Y6uWPJVG8XlC2rGgwYnZXpO+AfRUX0PeL3aDPMnLAawl+gVq3IevfgCKC1lcCUhsGbM+mNUGEjQ4E+TDWYkfJ32WgRf9gP9JpLSuTkwfT/HljITcQ2D/Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9f8gLzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9f8gLzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2183C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722974753;
	bh=1wgVXruvJZa1HyRein/pvIVc1fchDxuGjDE1hM8cH/w=;
	h=To:Subject:From:Date:From;
	b=k9f8gLznuhDcQX7hbuCyHeR/n4YH9jjxSYdDr3yagEePSon/fFELoP6sOGOkutYzj
	 1dSmbCSYD8Ly1ffNf/cg1qqWMucTL+intDFQe6oa1lR80hqhKuJP7XWvr0SQNOVGue
	 JL9jZ8cXdRiCRH1meFsGld3oUwioLMkXt5RInqyJDbbQzAktNdK9ScZVAqUa8ERAMm
	 /pWqSEaJTqv4ahzAGlnA5+m+YLMS1DW0Q6WKKZn4WI7ojqgsu8sGMzFZZRaV8gjiyw
	 DmLSGHzi4umfAMaV2aXzPbytM9Frz5mZQPSVsZKp58/cWmzGeF5RAXd4ptJ9fK3zxI
	 +lJQgNfhywWiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D973C52D6F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172297475362.21618.14463064279660476030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42efa4818ef530e36521320a514be277339708e20ee525ddc942333eb8ba82ff
Date: Tue, 06 Aug 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722974753
