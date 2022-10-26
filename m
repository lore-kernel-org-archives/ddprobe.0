Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB0A22F2F
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68A6FC433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666809653;
	bh=zmLkUJMnhpEYuqRfCEoQgJAdG7b8SmyDVdkUcbbzYlc=;
	h=To:Subject:From:Date:From;
	b=lOujT0A9onc11c61rDUWYB89CyQuD2K/QlMME1SJecoly6HrBjL/HQg0ybtddYAx+
	 61ZexY04jM0saPOaBx9VYozKIaje20IgdXcmB3ZfGA9I7eNztkUzZKaJSFO+Pf6ekW
	 WhX+vVsNQi62d2vCYTMKyagaO0Jh8hX+2BOjM7jHGBKrBOF8CpRa2PYLmFtHIJ6sbT
	 ROu53X3Wl9mtHYwzG0R+RwczquuFsPiYuU83ld/Pl5eQrVkybBWAi2XA3yvCeTV+N+
	 Ny+O7o5WsXWQ8tTvYu2xiqtZaQzDTK8ee8Rmjkr3eshoTu99ZcRQFMdQ5z7n4ovrSg
	 7ll3QGVdcqfgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C02C433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166680965332.8636.8085482533178977219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f2b75f1df1210bd7ff1d03baf9996007ca52767532373e9eda748f8c54bd190
Date: Wed, 26 Oct 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666809653
