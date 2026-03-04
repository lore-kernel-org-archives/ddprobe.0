Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0C9384229
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772624694; cv=none; b=K0AemJNOrqENk1qArI7VqP4tqgSzxBhjqm6DHAGVfaZ6l6umAQnxz9bk08ceczU1zML4jVGx1CdJsBLHS9fA5njzCk2oKzAOkdpTkTraVq1/EeF8E/C+ZHwbjPRFY1CaIhXdCfdxHJe3ZSLxGad+0qL+uzJ0TMYp9PAIKvQCQBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772624694; c=relaxed/simple;
	bh=oTYyLVbHZbpnVt9bvRHVN9vonXocRWIkoegUTVQKbBo=;
	h=To:Subject:From:Message-Id:Date; b=cSw8i5xeX3n6qVv3fxhipwEh3fx8SZBCh1xY7oU4XgfkDi0KE6/XNQQjxxsMUZ+/sz254UlBfCcTXUzf6xY3nR2iNWfs1nfDRdfcLGd/02nUhu895iAEi6CHqWRhYLZIiBgq8domXH56PErWybT9isutzvzCW8XNnmdbQ5rlV9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqmPOQ3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqmPOQ3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF587C2BC87
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772624693;
	bh=oTYyLVbHZbpnVt9bvRHVN9vonXocRWIkoegUTVQKbBo=;
	h=To:Subject:From:Date:From;
	b=kqmPOQ3bhxW5x1MyDr9FQrKlXnTKrwp5glTmA11prM0m8gl9/eoaHl4GdqgZqJ/4m
	 5de2bUMPQPVDJOpUBPOdRaaUN5GNoSETsVSzmwYyjVgTqY6Ojwu88EVXjZBiX1cLK8
	 HZ4ynWhmz6lFib6h37nkI9Z6j/8rHOzQj8hJHeZHTuW8Nt7eLigZRo1Fd1a6/jhX4T
	 NMAmWUooWjuoyoaltEs2g24YmIee9V6avSXJMCNKa2ILepZ+RqoD8VcLTF4nvDWrUF
	 TfAq1jJ3xSet+1Kqky3d+W5PvZaOYR09ST/zfGajJAiYTgeMF8wc68Yk5nWXyrFJky
	 Hi2XyMqXj9Oyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8790EB7ED7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177262469366.29470.3340977945601855201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aefa15206a1d18f8019403badbb5f004e2653f897cd38233ecee0b943589d7c0
Date: Wed, 04 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772624693
