Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616E0168CA
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 15:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB54C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 15:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687274528;
	bh=nwZ0tgpPcf61QzAsqp5wNFzJWazS3rIXM1wuziacS2Q=;
	h=To:Subject:From:Date:From;
	b=BcwRK4+LztntwzHQY3cJA9nFxUy5Y+w5PQNfs3pe5Vi3WFqotec47lH1r7VqNR0qC
	 kMwf02a0dIPEnJhm5uhFKwak4k/Y+94tEOg6gOUl3jq/DmJSfkQU+e2dnOgiWnOaGc
	 yLQSBNE7IOJcMAKRkK8B35RKldfISB9MGPGMhoN52t5aFk/8E9/UFKJQVvQgMVmCoG
	 6ZttrS1XuT2uObI3lwaliDROoZwf1eGipzseJFSLDPpN7cgN1EfScSja6iPxO/8QRq
	 FtM8/yV2lCm+zHIGFC9F0EMCiU5i8ehD/TH0rCL/EcQopohmMzxkn7Xf/QiJVI6gTE
	 B1Pz3A7YsXULw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5027EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 15:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168727452873.5260.7283471417991389232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41f52a5c64d508ffc2d1018b2cccbe9ef2c0e42876c9e186685a80597b43304
Date: Tue, 20 Jun 2023 15:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687274528
