Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6686210EB
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 06:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653545159;
	h=To:Subject:From:Message-Id:Date;
	bh=hyFK3EEH7HHctIOCk/FY5ssUY77fRJGBZvtHbNSSlTw=;
	b=GjeA4O7F1mtDREEC/tttqkSYCQZj3sX5bjcNmijz7DZiq5U+3Bu7gXblJzfFo7FS
	vyoLM+T9g6o8D0WyZ+Akv/Et2WGSVxZL4nB+LRzL0TxtqEO4h9ia+5DxXUVI7ODzSXM
	RKj8Ii5ZBGS6QFbSceXImnaZkazgaNOM3yO4SfgE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653545159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hyFK3EEH7HHctIOCk/FY5ssUY77fRJGBZvtHbNSSlTw=;
	b=aLcTebpRmYw+3DaTDQ1EorjjGFnZLoVB/gWK/RMSKr3uyUM/Efbgolp3JTI8GWNq
	pfNhimaAZmqOIgPgXEmT6jg+hDrFzLIu1MhNHzpFLI5r4ZMfYpzKY1uQNSG0RQDxRPp
	rhf7rVV3QXEgro3XENMzACoU0pDwRwVPTcNoT33c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fef8ca39-27da4cb4-4f75-47b0-b18e-b2ecb8b94f11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3faa83b58ef319927c701caebc69ef3571fd3684ded624a25cd21fc72b1acdc5
Date: Thu, 26 May 2022 06:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653545159
