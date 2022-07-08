Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB5E809
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 11:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657278412;
	h=To:Subject:From:Message-Id:Date;
	bh=SlnZz0qt2Ik3AlfYMt4bB7kpumJde1bDBC3y2pzxQI8=;
	b=Nsupspt1uTrBlYoM5z02RXGMJcCBqiDa3cBGEvAUe8OzWoh0BNyghlWgu6b2OGyh
	C4QoQhNP7OnHgL+yxeBy2RX1mBZiSWgRcmmhWrYjXEbwCWqgxZgFs3MwzZjkB1ejDmv
	t10L/Fv044NAFRWfC0dTQ6Gieb/WplZx81drckl8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657278412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SlnZz0qt2Ik3AlfYMt4bB7kpumJde1bDBC3y2pzxQI8=;
	b=MyKGJn5EwJi/S9tQ2MC3ozmXyO/ofSKXt0WNvA1DUfH7jf186BSBNcFCLFfRfALl
	qN63jlUNFRysoAtoWNoMrT5FmP0Zf1dZB5IDTUpxeekOT+p5MqnwCyUtZpqGZup9fxh
	j6pBPH6DQxnVvqO3e1YQB/Rf+sBaOOmuhEFH4kQM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dd7db637-640da791-b00f-406f-93f1-d0e7935f6616-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e10b97a51ebdd1037911e21ea524c13cb0517643a5995dff2e60dac51ade7e01
Date: Fri, 8 Jul 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657278412
