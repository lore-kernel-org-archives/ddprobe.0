Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A91F2581
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 12:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656073612;
	h=To:Subject:From:Message-Id:Date;
	bh=hAxake/IxSUdqqYZqaPzk1AIi0dLLQgRT/LNb+BR+RI=;
	b=a+N6u44YF+tDvnPM/ww05eDIhgAI8qvvjuhs284rTf8YfwINyGmqpXpMtgTHFz9d
	eAZp66wPYXARgK+HGTzFiF3CuiJ5yBi+qdJdvzBPUTpIhYX58z+fi5UHSKsIqIpHSz3
	5ISZIHOWGZpL7lWGfF7uqpAUeC5b88sxU0ambz8U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656073612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hAxake/IxSUdqqYZqaPzk1AIi0dLLQgRT/LNb+BR+RI=;
	b=YQR5sVHye763MuGIK5I87MIHLFf5JnsJw3AN9ldUGCIHToySZh8E5dIENgD1DyBb
	MpHK4YestJzP9KQrnNlwdcDbai8Kf07eD7c6Zkuv1cyh9jOkKVlUB2E6QsUsucCOiot
	NqFgOVWRAgayWDK5ihlU+urEBsWRWn9G2S6DklSw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018195adec2f-b5f951c2-a428-42e9-b037-90db6164a116-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98b3dc821dacc98ef0ca0b4349ea7c1e67f7706fda9b6c90db809f5d296be53f
Date: Fri, 24 Jun 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656073612
