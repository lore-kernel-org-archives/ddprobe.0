Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24092ED873
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766558034; cv=none; b=dObsuVADSP5+zGFsMhGVuRKl4nG3rgNuWULrSdcINtartVc03ZtE6JKBWYk1zwsKSmzsIFMe7pFk0v2KxIh/smmLSn03n7pRyQOXDI6axQvTmHItfnHYhq2aBZ9YN+QF1IBC6wmmxx6Vc4THgf9+MkzyxvEl8Sr7bYNd4LKjsnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766558034; c=relaxed/simple;
	bh=wforCDdxAUThQ59KwwckTiStko79uH/C0FZvNqv2jPc=;
	h=To:Subject:From:Message-Id:Date; b=UvoDACY3Qa1rYQdKmvdJaVZBWoLCEf5tmU6aOvAod8nfW57wBVkJg+xbMqyvxmoLP9abKp2UjQu6yyB1yRGJMRg0JhfTLDF0rtj5ahGU8R8qN9ZuINIIl0Jg9Scv1mkGVkphQsEpaVbPmKkMc2GeIoamourpfc2JPV1RrO6j9ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UgFzDUjg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UgFzDUjg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D33BC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766558033;
	bh=wforCDdxAUThQ59KwwckTiStko79uH/C0FZvNqv2jPc=;
	h=To:Subject:From:Date:From;
	b=UgFzDUjgjcNDpkfIBi5kOOHhv3i/jBbgViy4ixPWYxUE+1NmvWmkJKhFSw97QTM6b
	 TdVm3JCu4h8WXQl+kghm+JHn0k7cZbNOMwsD4u4BEPgzlVaSccY11BENr40OXI4XMC
	 Qm840qY2wR0kdEYeeQA3GJXlmwRYvu2QZ7kqLz2raTv8/Fe6fVpT+pmuy3yQhHTt0Q
	 Iilp/j4LiGvpPE6r81qSQWxqpvXtvcmpq2mYUjtiNrMsQ5f0dzZvYKaeHgSNvj/g3C
	 n6fP25Q7nKdnter2G+JY2hDyb3KBzEjF360sJF+T6/j+EsjQfZBerfoiddqvS6kBft
	 +ejwgNnsu4tpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9FCE7491E
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176655803358.22631.5209360267609115843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3c01bbcc101034a9144dc57ec15d2877752e17869e49b998f26b69ee13be05
Date: Wed, 24 Dec 2025 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766558033
