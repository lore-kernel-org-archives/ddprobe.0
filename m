Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F81E3C1E
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 21:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FD7C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 21:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693691648;
	bh=DsNetB4VP+Jqk37BTovq430gfbTNm3f7x4KqfdV02UQ=;
	h=To:Subject:From:Date:From;
	b=sW1Z/Cby60QkDYqplyu7jyBxQk4KF/h5tEh3S9ytCt/IS34s2pLqLvQxqU6+CHOhX
	 rY0NGaw5QXkbhcMSlhXKVKfhsU35zUYUc2TDKrmPEn/GDASy7F1aLWznzhMRqHrZUa
	 7wa4qBk7MiEWqS95z4b1Pib7JXemOzZoMskQpf393l45jzly96Rw83C4/Etp/OxZW4
	 FeZDnLHjI61GHMVAopSzMg8AttHfG7+D/HjY24gQ11ac6l6LSA+HVuMEH5Aa2q8lFw
	 9URP9qy394v5yZoWB4DP4CQF0GH9pcTn8RjAvMYuZ4Azu9xy/G+KdGtyc9eJvFKLCr
	 8skFIfxMP/46g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B154DC71153
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 21:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169369164868.23788.1950747450976903551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 606c596023a17f3134e1d958e2fe2dbf5f63c5071475a84cd517dab09a1009e1
Date: Sat, 02 Sep 2023 21:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693691648
