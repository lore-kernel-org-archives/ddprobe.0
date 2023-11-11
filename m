Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09551747D
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxhru3GW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86568C433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699692496;
	bh=63axTAn9pQaQi1LMFTPCvHJAkAHN35wGXFADM7jPC5s=;
	h=To:Subject:From:Date:From;
	b=dxhru3GWkmzrPEQhSxJWJzi/WPknNimtvlJLxcPKanDu4PXvIDM3jkt/DH5BpfPF1
	 ksvlTFb8uNFJLRP2BhpULU6bvktVHTY7NBndmuP2btxIRqGs5/uKEXfkDZ3dgUK58O
	 1ZfWxzpnUjOMm8AiROU0EeUw7QfEkoqfj4oPL5zcmo/zR3OOlA1HVWL+cNFDwlplhX
	 dCeTBTODoG78c6R5rRNrOH9U1PugzRkFA67yPe07hczAAQccV4fWW8xHfRbxOmL23H
	 HjkDUHXswXOqteHP2By90yks3JUG6lv9GOCQhtiqvkC3yNbFYcBPUvsl5+RTHa829+
	 9EByYM8GG3P5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F1EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169969249642.29833.13177110336858888459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b4a50178ad2f358b6f2b7362059a1b513b0632622618efcaad720ab68fda5df
Date: Sat, 11 Nov 2023 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699692496
