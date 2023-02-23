Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81B301FB5
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 07:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1A571C433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 07:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677137106;
	bh=NfPTDL0xa4hl3Z3RdGh/Kex/vtAK79PYIJwX9X9xjRU=;
	h=To:Subject:From:Date:From;
	b=QWT0JVTixXFDRJZX+T2xH2m35iUSEa7gD65vPJVGjh1OATVFD9sJdZ225TowYUatM
	 4hMSou4ifLFNtFbOe6oaUFT53pS4+zQtzURie0u2Nt5sV4PrrgfFC7VnYMyNAER5Hz
	 9mpOdd5jB5Yd7CgGe3ZfoGedHaj2WWV0IhErHZvJxN7kVs5JezzCWR5EBqRJ1j7oM1
	 wJAceAuglWJWU0X3oMudkZII01wkax41bfGUvHV46YxV9Xm52avt2YU8OdbsHYk48M
	 41jP1y510ufj3CROYiS8pjLoaVX6QAlrKN7BrzZknT0cwNf0Dh9LjSW3BaXcdQdNXO
	 4Zo1Hjj+6z0QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF9FBC61DA4
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 07:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167713710589.12151.6386791858290168028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef4ff4b1e748ae71c4e47e85e68db0cadcfbde36f2cb0bd4e3df2e70aef9cb2
Date: Thu, 23 Feb 2023 07:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677137105
