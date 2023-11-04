Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4618BE1
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3soEKP7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A8EEC433C7
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699078696;
	bh=BL1UZZW7EAP8toPkCFDwC3YW5fgdGBWFx1ZwJbpEeoI=;
	h=To:Subject:From:Date:From;
	b=N3soEKP7lk1r7TcHHdwVnEqO75M+JH+LfTUBtX9MRShrFYcoTeQQUd/y8VN3HjZQ/
	 irwfZQdW0RwR8njo9o/YzJrtYT9xSf318R4dkpqtI8JE4gofcLSQ42vr+hW3ALQUYP
	 XevLIiJ27VZuMnj18sFnO5Va0VBmKgpPAw0c1GKDmqspySdF01ohUWLyyyZ/cZRMOy
	 XXEV0bob6x6I/y0uq4CdzRwN7ggslGd9Vk5c5G1Es37+M02lPXu3+MTO7pQhyTLwa3
	 mbyP6p8N9NKtb1mRmM2iF7+4KvJm/MArVRPkr6LSUapvwQFS78Jl34hxsR6riItBJ5
	 aOeTXVzPKRNhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BBABC4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169907869640.5504.705614746951763895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63a5e8201463166efdcbdf966dc130c77b8e04e58394351872b83b6206d11737
Date: Sat, 04 Nov 2023 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699078696
