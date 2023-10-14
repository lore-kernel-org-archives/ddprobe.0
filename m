Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CFB9250E5
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 23:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCvNm/TU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77AAC433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 23:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697327228;
	bh=N9f3kyRWdkHbDQjvmePS8djx528X+b1sm/Sez3zsqL4=;
	h=To:Subject:From:Date:From;
	b=OCvNm/TUThHUFknQuNU0vO4Cmila4wT/gRerqRP9aH2yOjwLSHuZOGTMDcd2zF9xh
	 mnIodZPQMCbbH26jnvHBR/DUzDh5JpmgaGWyV/UdvIdQOlSXHRoGqEVznuLx+1UlMH
	 2gPun3CIJObdOP6g0r6xXKUTi3wAT0uAgMkDMJXke+ToShZKOre4REya4UOdfIPZNh
	 yoDabaS0DGB/f5KkguT6nBNb5RUGZ4lwh6IPNWI5PZoa0Kk23P3S6efzXJtS0RPP6e
	 ReBa1P05qMDUxUOg9/onRvADQkuI4HbFHmVyG2Tr4mbLug/1wnUS8DNGdVEavyD4I2
	 h3xmJjmQzaHQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7817CDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 23:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169732722870.29585.5476214434759834549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68225a56dec56244625038b28d7109f95314878ca027b3728cdab10d5a320b2d
Date: Sat, 14 Oct 2023 23:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697327228
