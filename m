Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF34241679
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755754194; cv=none; b=RQkVjwfoK11G19AZVjd09g4LdCgYznhwMqg59JBHQg+bTQlUvWwYp/V4YP4Irt2n4XSECCfYJGeTFWAlcaiNYDR8tTK8rfMglpfDKqkcBZgEibNsVhCXMChQkhv4BBtYRKY3b6xqFS8Ywg5WUnif4G2PI9cCPdtY+0jfn7UX+E0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755754194; c=relaxed/simple;
	bh=P3X8tClVMLt3GmT4Nt1Clm6iVentLxx9m83d7Fman/4=;
	h=To:Subject:From:Message-Id:Date; b=Bh0ukX5TQkE3lA8vLBprpumPGNJKV/DqOXDXRpjVrW8DKLgW5hN7MNUEY4NwxYdxy/yEBp6MXChQl4JXQl/KmNl4fxaxrRTG52vTNqIhodwKNROzLEb2FfVBXy6vFtMTDY+KywDCGP4RZAuA/6zXF2PVfC0BRh+fGzRmaRZHfkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lyGjzMK8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lyGjzMK8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C27C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755754193;
	bh=P3X8tClVMLt3GmT4Nt1Clm6iVentLxx9m83d7Fman/4=;
	h=To:Subject:From:Date:From;
	b=lyGjzMK8+pu/NeF7BLW/U6G5l981aytLm2pGChuFPUTRE2aDHxpeC2X3lWU2RM4j1
	 ITZa7rqHFQL3U/HD1oofAxVkfcMltFlir00r672/yndvui8J/G26kFt6ysHi2HLbnj
	 KfNXam8UGEEoxfD3xwKvd9t+iTyhw1J4nDJDdXBEnATaQG4RzThk3duYqZdhUWu8bQ
	 qJuDiY7V3Ee/EgyOJF4FnzPpNrhxK9Mvt0C8f+Ih1xM6RspBG4Mb0WLP5Y6HL5du+Q
	 W5aXTAAavp1xo7xzd+ZI21qvqR+tGF483S+hM1jPFOlnzaYA58F3m4/K4Qe6Z3JtGf
	 ccMERmrzrLLNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFEDCA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175575419362.11553.13576739291012303191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348aa0dcc159e9b88be76316451543a70266813972c94e4e344ddd2776877dbf
Date: Thu, 21 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755754193
