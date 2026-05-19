Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C612FF65B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 04:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779165634; cv=none; b=XEPh//0oXwFxAh894uXGlD7dC7hvmIt8yg6kqsRs6HA7KWK1gtfvs2KwiftwqTcrU+9QBQPqpM1dXqKqDvSbvSBMrUcu8YE6m2BJjBSH+ff3DD4Ar4xU+jT9rp5NI/Twr6NERb9j0Po+wYRkw9FEh0ZD7+b3b3aWJexw47IjYHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779165634; c=relaxed/simple;
	bh=uQ0JcuH2iT0IWo5SyV4+NfErUbPLeeCdZBqbOPe/D3w=;
	h=To:Subject:From:Message-Id:Date; b=SZjxXkzSko5sDObWB3hAAV8StahE+ev+HOqNy4vgCK8sgluVSmp3XfOjfr7UjyQkpLT4In2FsqAu1hDhG+ZfNcheUKCT/oomVQfb7FREtYn/Yf0Ip7+cMBzB3Ej1gQUC+F954GfR17ICMJXtQ+y3fATG0DopLnSUjqH1jCiZbfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUory4lt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUory4lt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68B7C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779165633;
	bh=uQ0JcuH2iT0IWo5SyV4+NfErUbPLeeCdZBqbOPe/D3w=;
	h=To:Subject:From:Date:From;
	b=VUory4ltJgmOsnpOjzcyPbLNblE040l7s/lLKxZAY67DNGfIdKpg4LJOMYYzrnUVe
	 Zl9ZCmjzivc/uJioJUYEmZtFhbYPDdrfkDdGxmWNILG6ka6P/rAVUyGGQwLRh08KHz
	 SKQEkWhZaVvfF8axT54juvspJIQHl4Bz922YqTEy65sXhiHx2mXwhCOn+9k9eN6r92
	 TfSrdxqKLCXFvdSYEjA2e0eg/NHxfeq4Gsy8zqSimQZ3PFrl8ViJY01qlWbFy8jgBR
	 IE2AKY/b4Skyw7IPFf4iV1A2prNxIaYQd07n3oxZt8/4iDK+aM+RxuuFvA3AYIOMtW
	 eerMsDR3RaOFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4EBDCD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177916563370.16495.4431752957732957184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcef48da6d2513212724c7cfa6a4aa424d424b1d3c03e894b16df4280fb14912
Date: Tue, 19 May 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779165633
