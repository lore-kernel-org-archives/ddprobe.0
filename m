Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFC713BC0C
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 03:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746155995; cv=none; b=EHyMe8qJhAhxux8UOKbbFF5iV4DdXqM/hcetKdGuBAejHDsNENYH1oadGwD5GF138d5mHwVbJDq2Uog51klt6JmQQGFem2lchXhqgutlERaNXlQitI2OpaxoZYi82ahMNRobKIavrT9e4qClmwOEOUm4Yeqv+62NWdK1ppBFBWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746155995; c=relaxed/simple;
	bh=YDsC9tc4gfpkFg1NgX/8+uvlvjIraHdLDaom0sgMSQE=;
	h=To:Subject:From:Message-Id:Date; b=jlJrSMSq85pomx6QI6GxuvV4gwp44RTvl2O0Wf/l/jKmGm4d7pnGm5+3kGm2ZYzgJwNfRgdsHf2Wf5eLpBF7u+6w42zt/URcUpoUu9sqdWthgH4n+8ELfxSyQjR80mk7YaQE6TJ+5BXljyHt31uU9nTwwwpkI1wKpwJ9AuIKzc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQA4CQ3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQA4CQ3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E54AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746155994;
	bh=YDsC9tc4gfpkFg1NgX/8+uvlvjIraHdLDaom0sgMSQE=;
	h=To:Subject:From:Date:From;
	b=KQA4CQ3bLgBl6WxePpPHgtJnO8vTEYQlXxwZ61i/sh6NI8W4iqt5awXSKUk6ZcTwz
	 w9pBBQOMh07lP7hm2V2uFRnY+swjBkm9rnsjblHll2jbiArdEWy6PwA/S89I0a6Ztv
	 Q8W7Aq6T/WB76D6Reg8pUmr3RcP2MHmFhpsKEQnyHMeMmxJMos2nqUZkgFcDeaBFZQ
	 wakgRkJ3ww2PxmloD8uPU4v5m3FCJXLlhbaAqv5CsJFe2id5eY/Vain5l4vhic7caE
	 Ul/jt3qkdpMcnztATjBcGM3na7Wqfj/N7Bs+pmCKUsk6hfgcnpjmXPcuSFKZwlIIdL
	 VDVYZZ2vM+kfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E14AC369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174615599357.26678.10614065577944647311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55dd83e0ddbdb9639876bb7e4cf3348fa93bfb9fd8e676cc59944cbaefbd59ba
Date: Fri, 02 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746155993
