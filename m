Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2E480F
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660400452;
	h=To:Subject:From:Message-Id:Date;
	bh=RyJ8lsKm0mgp4X+5Bsp08Mu+mNplf7Nf6oeS3n7fsPo=;
	b=co9gbr6b8oE2VPEBZOHdVua9KMlzkQJX1BS43OQD+K4LsFQIdPiJKFCOvu18hE5J
	Jy/eV8P+tqW1jM0Ta/T7nEZy3scLzO0gIq/FKAp+gi149G2XHwDKJBdQ96Ou4t7NY1z
	sTeEZNCJ9jS/u+3kdOejA2RaI8wJEGVFjnParoxQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660400452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RyJ8lsKm0mgp4X+5Bsp08Mu+mNplf7Nf6oeS3n7fsPo=;
	b=dGnz4RuAoB16XkyGvP2KdOEdquKeBzKk/sGvEwPxY/jCkDYZA6Zwl3ad3p64Yq5M
	T7P0nFYTditA0oPFz2NBMhHCKM1HSMAKOvF267oq7N9FEz9eVv4iMTpAsuTT6s1T2g2
	UahG2uwuw7O8y/1sdhTNpm1eL1gGdfmFC8yLq+Fg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182979443d2-5a06ef95-d2f4-4946-984e-4a823c6ab7c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5320fd8f820930574e0adeb07bc092902a47bb73107b37344b37dc71e47c08b2
Date: Sat, 13 Aug 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660400452
