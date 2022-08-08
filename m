Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70ECB7A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659997252;
	h=To:Subject:From:Message-Id:Date;
	bh=lv13+3DPbgDeZtmu9Tk9fQbRfIC8rKSr8c1K32baAXg=;
	b=NJugDzSns9UyoWP+L/8JEVo3mfgWK1sQLqbSGEhySjX6PT9OZewaqrW+hIlXcPlE
	vncGlTm/a0jNXjTjDJhrlz1ntEZR811hQsS2P71th5Me4zaVFpefpoGXmkUitIB7+Ln
	lovZrOJX2r5B5/apUBkAVQQ3UxuJlOTb9UtdRGNY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659997252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lv13+3DPbgDeZtmu9Tk9fQbRfIC8rKSr8c1K32baAXg=;
	b=SopXUuV2+xRgrrzDUeZNsofKaNg3hPZZZlFcJLjkcxo3KTPCNTdB3pF5SLjW2Krj
	ATHiyhleT8PdjIl4K1xlBHPUkNnJIVil9obSUJQTgoYWkTB155DZuTugHHdZFwRkj13
	1ZSpjqC9JoSROAIH24CBZz2GI6q1Pxg4awGkDpNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827f8bebcc-3cf77887-a23b-4656-a071-f5628f2bc4f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51620ae0d83e2fc5b22f8200257202fc7cfcf7ca25751cd5f0ab9cb98cf4ffc3
Date: Mon, 8 Aug 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659997252
