Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC95F10EB
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B806C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667629854;
	bh=0SW858ySzG+ssPVoXvI3We4YD0A6sEeaIvNfZ7H6LOE=;
	h=To:Subject:From:Date:From;
	b=eAGO4Gu3tx2gwXypfSz7TcHSVhrSb1EAoWn7f9d2XJvGlEMoazw+V8dh4XQghTFkA
	 p5Jo9JuXbdL0gfjxN+fMsHqz4w88ljFjLo4OlxQ7AryhCWdlB6jysBdeK4JqBJqKhj
	 98qrTgcECFevdXvkKr238SWjlm35IEtsUvDFzWGH2fmD9VAFuGjyN4DrJKW6lbk1A6
	 QY5oRaRDEBufNo4IWIOTSyzrtY0koJu5ieZs9UhW3WMBttnG4KR94Qeqby+lZ4+RpS
	 8iJaisHCwPS4VGKhrHnFs5RTtELZRRliu3LWQwlivuv2LUr/lJ3ktEqYVoaz5uxsq8
	 ZSMlIrKxMDLrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C71AC433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166762985435.8953.10396346393165802880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2951c9b5dbb9f5df27ef8f4512f54086a02083f6093d4c400e4a065a8e50d99
Date: Sat, 05 Nov 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667629854
