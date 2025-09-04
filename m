Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C662829B8C6
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756974593; cv=none; b=uV0WfiWJx4+6Ep0QEe0lSJrd0nUx2Yti83MBxvlRitzhataMsv6IgjnttDZk8ZUp33duBtT5Kj1AMP+q9kqmcJk6XHZm3o7WKlfcExEbZQWEcT4IxqUG8ZP3A/kZaHO6DMPjrEOh+B9pg2TE7kOJp6qRwSSSCguDJFrVDRjUlng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756974593; c=relaxed/simple;
	bh=Qb97ol359md+XYR9gC1pFp02Qb9M1qz8YNL3SeV+33Y=;
	h=To:Subject:From:Message-Id:Date; b=GvG6ge9sjoNdw7u+a43gzfkoVFqmUDODEkXmNtHG426U2gY2V8zMBJep8h7iNC+FQqh0ZgFA3PioTTG5dDQ4PPbYoWlNAyNbzrMkW4IxB++L2FB0nat8M4T5Ikb2rsz2en6+4Pne43oofrRbOfh9NI1XHPHQN0/fA+m5U1ouRTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXXMZ6/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXXMZ6/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20B5C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756974593;
	bh=Qb97ol359md+XYR9gC1pFp02Qb9M1qz8YNL3SeV+33Y=;
	h=To:Subject:From:Date:From;
	b=uXXMZ6/4DYYr5x5x1b0kv55iUmWM4I9/wkvcu5BF0zFi/rQ6CLv33kWlzDj3fJAbq
	 f8osIckKIVEMb8svMp9Xny4GO8HaMZdTPcsyTlJUvRE5z5CAEYa14QCx2ZxPBg9YMZ
	 hc5XRl3CkucHXmEYtplm51qWNwFWPvigCH5h9Gu4kSAcUzXTj9Ik6M+vS9qwVAlzPu
	 Hff5qEFnu9+dI8Mrnm4lviMVKuldfedhOWaYohx2XMQtMn6KkghGFnjAx72ygfkflO
	 Rm9JpmIDeC2CErQhI+crnxkvPXxylhGQNJaj28dvHf00pTk8f1NeSp0Rl7vj9aMWlL
	 J889g+9RsXW+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CD2CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175697459358.8700.2586591255800677686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c000cbaa360a71af9a672a298403aa1f8fcbc2759afadc419dfdd07d99d376
Date: Thu, 04 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756974593
