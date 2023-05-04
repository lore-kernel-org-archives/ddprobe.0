Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BF67E
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 01:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD59C433D2
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 01:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683163865;
	bh=4sIElngnqPHWjLWSh2vKIW0OQANgeYzulcAiC8BIy2E=;
	h=To:Subject:From:Date:From;
	b=HjwkLF/8tpI6AaRKGoNq2mT42y4xSYZufH0oPofr/4wLsxEo2OAy8bR3V/uh7f6OV
	 K/kMkGdVS+lg5SYb7G9SK4bOyf/GSGDfvNFtyrllXKZhedN020csHEZvq6VYEh5KC2
	 V6xJJK2tesHSkbSGR+tOCoyZe1nNqJkeP+nDqV3wzVbPVXvicfugU0OiZovsvKTiOF
	 lFzGn6UI8etnXVtZsQG2kPrH2WXIKqbEjYghqdHnmsCJ8ipxryA0I5o90RZjyVGyuL
	 N4EcP/Ki5nhp6tNMbXWKLoYPeOgxfe16498zwB0MyavZva4zI/cfmv277p/lN2x6Er
	 BBp4C2ht/1+ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C096AC77B78
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 01:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168316386577.10264.11138179690958326853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 500f006771e52cefa139d1af3ca5c31e68f27ed4c623577322fcab94eb8051a9
Date: Thu, 04 May 2023 01:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683163865
