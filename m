Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1388B33E36A
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774554294; cv=none; b=A60AQRYkurQ/neCHqVs+VgoVDxcV6J+/+nFnHP1CbZv4+Lqt3KD1ldnMd2nqDjtwy81qmQDlQCCUwnhHmCjfJpfizcMYlxDXM7j/9aKBFQli5uGgJsWGnZ5Oiw1GM3Cu5vlQjQBOEeKzkq8hyOVwB6RzmSaoHF5KLbudBMFb99I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774554294; c=relaxed/simple;
	bh=J1+W4/9buYjfbJCuCBbgVUEnFYHUlAB3WpLU3ISy7ok=;
	h=To:Subject:From:Message-Id:Date; b=ME+FAT2VyiGC57v80laP7uuk6w/GJDz03v0wwyjhw8oBnOhQjk4ejPvKdps79zww2RbXOkIgNNGz7dy8k8rnycewfxqgNmpcKSOM8vuYqgMDZh3V9ltJh+R3kvZDk8I4caU3AkThWVVziZ0pgMmt3n++1QK/7HgFGJhHOPBfOc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJ+Cx8Mg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJ+Cx8Mg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC0BC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774554293;
	bh=J1+W4/9buYjfbJCuCBbgVUEnFYHUlAB3WpLU3ISy7ok=;
	h=To:Subject:From:Date:From;
	b=XJ+Cx8MgeHLDKzRRovYaIFwjWPxio8Q9DC/tpCmE5Y/V+h7JFkdKzcPhk7N+YOU7A
	 GDtie1rCj63GhNRtGXTDgcKZ+uIh6Qa8vUC18V/4dwaunN6LNWRlBgf82qjCuBocGb
	 /esinCJ25N6HuJOHNX6rR9Y/goSa6ij5kIyMdQNvPhBw/+NDGy2HgaVJfFDDRSj1Gm
	 lJ/GkyduQe0NYrSXO8NtNBJqurdMX5zfVjtVG9sV00Tmmdg9aLSLU6ncMr+/7mJq6J
	 kdwVtaJixJU5+8PAv/3+U5vfGYz8mPmpAaywlfu+YWHmBXh1Qpd8dr4ytNDWKiHiAA
	 IMNn+gDwO/xoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9862610AB810
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177455429361.31658.16099002899923394938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb8bfe5e38de2f67f88fe3273afc25821307d6eaf08b0ee1686a93dfa9168b9
Date: Thu, 26 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774554293
