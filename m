Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329CAFBE5
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsswfSR3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EA2C433CA
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704147496;
	bh=ZYiVv5AP0C4Ww2GiriQXFTDSxzitzDjHNxjxnQ2S7Zc=;
	h=To:Subject:From:Date:From;
	b=RsswfSR31qYIGk+LgB/ptqlcqrbFpiVUp0qkxKNFbSmGFYjkJ36mFEMLZBvx5ECBi
	 UacWzD3AB2FI+6ZqrZUN/Q2NEFVBMW3zW40D4zV3qk69JB1Q81fAOizblKyqHa1Qp3
	 yqarHeQ43AGrMvxNTBE/Cr3RI5Qo6QK7UTA0jcWeCmw1QLzRRzZ/nx5MGn1J+lvis7
	 GFqXIHVKjuzPT73G33j6CjiGf4kmPazTv0vDCC2q0PP3BfXjVYXPHU7GPo8WQMElCQ
	 MPVbsuT3L8FRIoDUSaT03n7h9YmHswwcav9CVxtgZwHWbSgo5lXOK/9awdR4e64eOy
	 +wEJ/X/rSU2tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EEACC4706F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170414749646.30569.9080349535164963231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ffe1e024440dab037e80513446d0360dc7fd47cb9682060f3d6ae0e9d4149d8
Date: Mon, 01 Jan 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704147496
