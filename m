Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40F87B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 729DFC433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666591253;
	bh=aGHPCvavEJLSdmAtu77cI+ZvI8R88lshwYC2J2op5oA=;
	h=To:Subject:From:Date:From;
	b=tp5bvVmrDB5Z9znbz/5jX/aNcT5CqLNfrr92OAjsaPlBDF+k6HZn6fBRfD9YVDMAU
	 AnNvnT2fz6V+UIEGQQ3McUcam9+SPTbqPC341RSDEaZ3Pg9jsTmPToLN+zWwGVmhAi
	 cwzzfXnEANFLIh3McPNrx6AVQqUahOppMru+o0bDOqMyJ/2XzzsySAXdUR8ZuUs0V0
	 mh8YpHbTltmVdMvuFWCeyygOaDzPqHLGUnbsoKCNz6VkyEBR5ZvOKgZZrgdNeA8Zyz
	 SNCgoux7y/UWFGfokitCXJLf6L+XeLNxe4pV1Hl3EPbLU8TjfRdExxwSKrqgikQAV3
	 NIf9KsRANjiJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58795C3A59D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166659125335.9240.10611117952250817415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ae0855fb51ecd2618dac9deee5880c0529830d9a7bc7fe2bcf7fb76ceefb24b
Date: Mon, 24 Oct 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666591253
