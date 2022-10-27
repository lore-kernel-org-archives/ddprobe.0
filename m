Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08562568
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB13C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666882854;
	bh=SMZmOAnHY64Z3nsvNk9v7CdZxLLrukLX+Ax+n7YAAcs=;
	h=To:Subject:From:Date:From;
	b=g4mhWBIcR7GcGzoH2T0oL/uT8vut1eOoo8BPFLsZvERO8AW9ZGirtOl6EKNoTuch8
	 5g/GuVCPzAtk6dJr/9unluO9g8H2mbq/Gzrzs+q49EVvCYc4kexKzrytFmvcJwxC0Q
	 mu+T5gjmr2UrBq/shSBV9ZyHN3KUVQtZa2zFS49k9Gb+SIYgjrnQqCmB51WtE8Nmtf
	 OjaOqkGwFV3aJkF9gqZrne1UD/RfptHj0S4FjGJ/sVM5ytf9ZPiqG5zV2cyn9hn497
	 TgkBDxC05qCKlKNYr4NYXZD1bcXP54WC+4rjgekSzr6Z808NMrUIudhPLtu96RWywQ
	 7wNnjqh8QfPDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57305FA3742
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166688285435.1265.18260091787406471359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b042c0d68f446bf26a5695bed22261eb3066edd51c4608e810705e10bd2006b7
Date: Thu, 27 Oct 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666882854
