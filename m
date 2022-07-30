Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605091FB1
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659152452;
	h=To:Subject:From:Message-Id:Date;
	bh=oxb+UdgmXKc4x2uBdpr5HmKCAW6YvCEJQJIrhdL4DRM=;
	b=K2PPkEmwzYTQ13TLm522aN65r673J4bwsmWwahE6TrErRnmSpwziQi3nBP+5NcPC
	fE+bQ5Adczny3Hb3u7vshP1J8rHNwwlm5pujhJdpmPM7kS8eAJdeD2qzz5g4AvvXOkW
	/tNYBFwvfZzK/WCxJyR7k5s/recfoAXmAxnM3duw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659152452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oxb+UdgmXKc4x2uBdpr5HmKCAW6YvCEJQJIrhdL4DRM=;
	b=dtTT4nmk7yDBgfnlBQ21eosMudBenbxJQXoHl2i4I3ZSlMcQyzE2pwpo2QG/09rC
	zt20Z2J3AUVmJyTwI/Lg3EEbLF2ho+TTIAWw52O+uW+cUq1vwc/WYvSZc7geJy5xdL5
	ER9A2n5q+Cy1xZpnmFUzh+wtenRdk7vSv4IdWVZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824d314c20-13da167c-51d1-4983-ae9d-559674cc451f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32b21a1a3dca2da6e0de87fec1c9bc2f519135b0899dd4ce2f1e0a5fad6561d2
Date: Sat, 30 Jul 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659152452
