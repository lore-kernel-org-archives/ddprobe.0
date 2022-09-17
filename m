Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBAC9365
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF97C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663393253;
	bh=hbiqand75QWozElVdEkT1g6JjjNS+yviu0F6rvNqPqY=;
	h=To:Subject:From:Date:From;
	b=RBFUy0aTU+4OmCdUkQdwaDNHbtui1jSdsUBFliebA6+f20UPNWII8q9lixxjWz7WP
	 xi6T6JZysUop3O0ys0kIvkwsAogVB/C/2QehwQ/sn21/RS/MivNq/TDtPfpb5dKLpN
	 dn0boB0E7z0vcMukPxSk55J79YUzHmAlC6M/3jlneU4w5Ogw6hZwzb62Le3I49u4Ey
	 oL+EEkHGZZoG9C10NEipwNgVn+yABtcoF0fkDallo+1faVwQBEkMnjIRBy7+nIRFHd
	 J2nbh9dv4gWVXHSdTUG3aWJFddesfVfdHN96IdYmIKSam64Nl/L3k0atpjE8alWuk3
	 E7eaD/uAFQnEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535A3ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166339325333.26666.6702105338949694363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d43244d5ec9341642e1fe3fc15df93e15d8911dd0a17dc543c39dc8a4668c47
Date: Sat, 17 Sep 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663393253
