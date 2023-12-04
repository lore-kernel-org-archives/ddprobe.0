Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFEE241FD
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saP4obbJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F461C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701693496;
	bh=G4r6WA9c9lQ9iboPZaJN3ZW0Sv0q54vKfWyn3eNPpgk=;
	h=To:Subject:From:Date:From;
	b=saP4obbJ0j/91yT8sQhYd03COnSiL+M5Z6BI0+yocJMBFSctx+TwT3r5hhhMD20x3
	 ho06qGkF21QUiDYAgcZyBNyXUY7m/AqX3Svg0HvfdgZavf7WoH4taJXxiLYCG64LeQ
	 cBhmxhHaX7lQ9yXpKKqYlJsDrdvK1XuAUmQJFr457eFgjZgQ4SLP6BQcgLLetataz2
	 xwK1cWRRpq2SfmHWFEUA5ftEsPresGL23GBe+3+/bopxOg8G1qpCfngoc9eJAhomnR
	 zSslIAUHauPDr0T0nW3tEgixdD9wUInKbQBWeOEBr/HzG2Aq4Pzz5fZr9/Wl4z+e2/
	 VMp2k1l1oFPMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F4FC4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170169349638.13501.10268664386034972098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f474a7acf70c2b39b775c16b008229477950a01e3d1b35e57704f753c981fb
Date: Mon, 04 Dec 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701693496
