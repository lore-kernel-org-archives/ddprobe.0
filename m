Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ADA6390C88
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 08:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782116794; cv=none; b=lqsqersiVrQkonY76lKfVAEbjmVGyOOOTHtze4BXAGxyLxHtXnIldp6P6Enm6Uqs18MJm6OoYmPClVmUAAOyKSIoNAt1wxwJKRBj1IEYK63+1hDDMs4TQQ8iSL3vMZ9/JBx+5mv4XQ/arbjlgfFJrDsqZSltrF6Zi8vWC5n0PM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782116794; c=relaxed/simple;
	bh=/+OKc4bvxSUqf4D8nlnzAokI+S2asmSUO4zkWlm7wsw=;
	h=To:Subject:From:Message-Id:Date; b=iISsrn+v53ZeWKa6ZwpBVar+JmRVJgW4GMF1GJ2S5+i1Qbh1BbgLKwYei6XSOk62c6TgyZ1gJOv6NtB5ZfZ0336y0QjlmKFMgscVoBHk6Duvjbv3HSwQ6PfiepvDkU5Wzd2bAjupozD+PR/rR4vDJ3MOkQJ8ZDPef1dTgQ8HWc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVzz6TZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVzz6TZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6F3C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 08:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782116793;
	bh=/+OKc4bvxSUqf4D8nlnzAokI+S2asmSUO4zkWlm7wsw=;
	h=To:Subject:From:Date:From;
	b=EVzz6TZBGoeO+KFoGW34XQ8dN4R4KFEDe/fRuNfE7L/Xck3BTxSy7GvIktlqAjJEl
	 R0EC6hUunxg3+qJuiUTSa26vivCtbudzawmbCN5YnQ9zpqUZYDV8bbPZhcbpusYQWT
	 HjxW6xE3g7/h4da15NeKu3hwutxWOuIhFHQR1UGfwiRAOgXgafbLY4ZBtoJYmq4A+V
	 691miPLH6JIiMg/gLNFO4rUJT4PBjb60vqGcdRoBq02oeqDlktVcWYUOTpvrPPmHAO
	 94FvjV0+mJTGC0X7IG/VvmE8cAZNpPOEBLH2Chn9wNkelain0Zb7AfVDlEX2BkXgps
	 Otb/cHHwrM5OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BEDCDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 08:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178211679373.32220.5521413017497695513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b6205e59b1d4ac312c0379d42748737cd0b429541fd178fbc04d6410ad85b15
Date: Mon, 22 Jun 2026 08:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782116793
