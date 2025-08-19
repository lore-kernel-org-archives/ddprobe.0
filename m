Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD613054EE
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755642594; cv=none; b=fC2KfYkNI9rdRT316OjbaHqY90M2zej9V3HrbP/gtbclrsHnN2TOFv6C7VHuzSPYW1mUvlcc0BbmkFJI+QwZsjQ+jPPbVGpi0QbDfM32ke+Ka1gz1eWZpDaDMLykAFGKC9ttpSUgsXU4JreYVMuC31aHHsQwcN+t4fjBJnKPzGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755642594; c=relaxed/simple;
	bh=ICWrFMce+pTioSQUbrhyHC7HBAhDAzAQKD7tWJ0ocZM=;
	h=To:Subject:From:Message-Id:Date; b=ITTemzs+YF3BR4stitkuiVMN/C0CRlEmIXwhHQSusBHzT4tseih/R9UQVVirl5duWUf8g3RwUwBAD169y9CAOro6BGyWvXhvWisUTY1E++6h4qZ/Ae2YF8SiTtzeAjXrZDmes2QZ9BQ7lOuETw36+fQoy/C9Oe66oqSxwIgmrno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hiu33w0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hiu33w0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFBFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755642593;
	bh=ICWrFMce+pTioSQUbrhyHC7HBAhDAzAQKD7tWJ0ocZM=;
	h=To:Subject:From:Date:From;
	b=Hiu33w0WGUaW5gTDtxsJEn0KOAL/YPMvdP/DvlanZTH3JYrLi0pgJ2qjM0wfcAC5A
	 L/i0+vhXXb5wzOcCdLLSwUiNhGse0EIRS9VXpU2j6UMDGw0qeQ6eJE6OTSMebfm9oP
	 OOPtEXeYu1kgReXbaCDP6HT1p7hBLZlGZrOFU+awlxSS6DCMv1ZfCjzFe24Rj68hh8
	 7YS/f0v0f7WtHObXA+sl4N11eAPn3JcXHkN8b3hQ/Xq1kSOdRdqgzC1lmwxL2AXgRt
	 wwwKH5eIruwOG1BpbL1RmfASAcYuA77pOdaxznt4jW7Tw4LRWIH2ZsVODpb/d2MIEY
	 PtD9ludhJl/tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC28CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175564259357.4397.1273488948926859836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e940ce6548ea65b486816b9f4496696c80ed880f9e6244ff9d375418abe8b1a6
Date: Tue, 19 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755642593
