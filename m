Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1DE52F47
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FE3EC433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671049887;
	bh=J22tO7DeE3EMSOxjVQfvIncvrQaY1r3M/Dkxv2XJPPQ=;
	h=To:Subject:From:Date:From;
	b=kmDckTmBD7SCItUAaD/MBlt+XnKI0EPtW805Ai4C1HuX338dlcWIIEviQApwdkGtb
	 OG2kDD2zDYbRczGRYxVAxffW9yolzcs2SaYK5wkrel2hTT7NFu0L8q4nljATzsDmQv
	 jXCfae5XYuP7MpGkNzUMGQ56d16VT1KM6HA/4hUQjJ2aKwsBGyZ8Mlg4PleXdtUD1w
	 WTT8KTH2ihaUlcIo6DpG/cNfHt2GWK4n8M2vnpnI5p5wCZW2jY5B/eRB+YzjXyDtfi
	 EOCwqQgkIRVCXjLIMTenxDQes85NTnDVylR0R882BGde4vgRVj+1emtw+O6DsA0Cfa
	 RRs1PR6sIYqzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74B83C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167104988744.10284.16030978787529171613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ce3557caa806d072c141eb7fd27424ea2e58b7261def245d3bcd43bee30355
Date: Wed, 14 Dec 2022 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671049887
