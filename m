Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351F1261B9E
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759296594; cv=none; b=an9KCpR6Qkdi70j4HLLOOaVrbXtjANbH2J+rW336uJaLgH3X3VnD8VlQlQQz/yuWNK+tFAxeTsZ2rzyqQgLNXAAheQqK3XUDR+p/tAfGGiQ52vNLfNJqaQ4Hcd8MwhLbhUA0J13A0meoiO7AUdMrwa5nLpx5Zpl3lmgyXbe3J3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759296594; c=relaxed/simple;
	bh=H99dnd5WtUtck0X3Uxq/k1BsoLlGoNeL/QdXkRqB498=;
	h=To:Subject:From:Message-Id:Date; b=f3lIS37UMph2/s+w5JkLWQ8hPw6TDxLozrXP9/AAz38Aw2eTAh3TzTRgSAuLWyAzQMMGsTUwQpMCmFK6z5CDUr2Biq1EBuOHs84/GvpVlcbcgBZPU5otwyvGcYLZQUinWfRpmn0q8UrR/Hb01EoKjmtmfb3PrLpcmlW3usXdeQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqFeWC5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqFeWC5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE116C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759296593;
	bh=H99dnd5WtUtck0X3Uxq/k1BsoLlGoNeL/QdXkRqB498=;
	h=To:Subject:From:Date:From;
	b=BqFeWC5Ai4RDgqPDTFPbifkoOXXv7rNv+KkaxmYnVv/ogoLP6jd5ZRbbAPmL9TqKb
	 xgNuVHEe7UX/f7YHRmUb6qY7opPAgqMYg8o2EBNsb2AJKkOIhrMnljI9F5F/8rCLMw
	 qiGgyuGlL8oT0NkBRZTL2mIhX76n7uD57GYCeTD7AfnscSBVqp1dpKmxynYGWLPemw
	 iogfSQ+yLELwg42ywDu9DcqTS/HoaI6fX/sTP4egJ41xPbYznwzOONEMDlr4XjhDGu
	 y7UtHdBJa/Uu9jQjriClhu/t0Ba1AO+fIpy6jo9AwQ4R5bdjYSQYzVjGR/mHv8vyX6
	 N4nXYMBJH1RrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D62CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175929659359.28966.5779916229428415565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a498735170f25c69aba26064c18259a71923541144c38b4225b994d944a28cb3
Date: Wed, 01 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759296593
