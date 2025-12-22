Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254B717A2EA
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766370234; cv=none; b=h1qVJ5l9Lm3LZf7IXkMS58Aew/3aWWwvmdphaEH7JDa4al2djUCOFgsoxQdUBgd/+cfXtCHH+ZgjeAFHckwqZ4gKjxUoVRE+pPyNrY4d6I7DZZI+5kcmUrIUY0RAxlscSbn8Qc3zxWG66UfYvdpKpIT8wa84GwTOyNEd7sAWkFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766370234; c=relaxed/simple;
	bh=YuoqpVLF7UinDx2EwsPQ8HquotTmtG4lk+KcfojOLo8=;
	h=To:Subject:From:Message-Id:Date; b=QLNVq62359Rnzo9CX/WFOxPy5JRLxMVjzBetPIU0xdzhQJIOuxVrztWO0/50FznZyuh/zuE4W4mwSIQEnON1mqc8QzIz6Cu9xOrFDEDk4xlGPiQhVJFj2M46IgNIMNHJ7JJ4pgCcFZFlBXqkmvheIawMLGSJkELpiSb9squyNyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHZJT/xf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHZJT/xf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6C9C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766370233;
	bh=YuoqpVLF7UinDx2EwsPQ8HquotTmtG4lk+KcfojOLo8=;
	h=To:Subject:From:Date:From;
	b=oHZJT/xfHWVLL6vzZG33SGD1V8bji45MbtdeNjdV7E459ADIZkcL67r9A8c1ktDdJ
	 qyIEM8Jms3Y5eoxYk922YlUMbfx24Rv8/EtghSIXqHHslMhygsemRhy2ULrfdPpTiJ
	 Y7ZO9Y6WDzkm+qGVifveEcXIfXf0KW7XuamJiPLrdJ4Dh1Eoek/xi9/fpciVRfUJlr
	 RYBuhZG44raBl0DozkAILnq/txvGskp625Ou9YfWPu6QTF0Fh9pM1hexscdtTY67O/
	 I3P2YfO1qikVSdxfenL0dZuMZDk7Mx5Uw4KSzPdKB2k6+9yIGsFGkWbYgOG9I6kS2q
	 ZFBQbPW7E5K+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B51D68BD5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176637023358.7948.17340714542783967710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bb66c722a833bbbbf0e88726c12150978d2327ebd5a48af8cdef97303915b4a
Date: Mon, 22 Dec 2025 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766370233
