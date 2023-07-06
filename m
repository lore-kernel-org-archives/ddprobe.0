Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA4A8824
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 10:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F5EC433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 10:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688641028;
	bh=GelOIEYGl60f1pUjB9WqDeD18IbswdYELX89bqxuOwA=;
	h=To:Subject:From:Date:From;
	b=RGsjBmK5r7P5+8v8eOgqhLUslGNS3FCsWOR8+YG2Q5JJQfOlOzFT18V2KDEhElk1r
	 9DSyXS4dseOZixMJ3LyNofRlD8IPRygE3H0ROMiWtMGw3F6EDTcmbsHGdPs0TSeffU
	 4VW1a4r/KWHvCSKNa7pSxv9N8vr4gXq2PyDDYrm2HvNDaBuuJo8zn37G85USg13Pz0
	 QyDvWJ3Ue+iiuMUidTbixDdlDCCvy+pwKtIEUDuJhHdNWgeB+SLUirkf4xeP6sd6VD
	 B0x6kBNtbKr2JmerA31IA4ClwWyJECAon365vLKk/TTeCFivnsLyTJVU3aLubopx5F
	 Uk93RQQH5hGAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C8FEB64DC
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 10:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168864102871.2620.14441276223682106349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e7d6d3e49c729327ee3569a6996b3ea30f5dc1eee878bbb868fed163bb05d6
Date: Thu, 06 Jul 2023 10:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688641028
