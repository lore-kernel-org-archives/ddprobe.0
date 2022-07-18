Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414117FD
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 10:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658140612;
	h=To:Subject:From:Message-Id:Date;
	bh=lunYzEW1tq0M5AdvsYet4yKlRRTpOai2X+dR5EfCD+0=;
	b=PjnIXdLrni6kQuvaMrUh0dV8kJgRA4OOF0mLFTHCloYn02RGxy8FM3B7aVzu4yBx
	BhUHQDhM1/KCa6jaMK3VZgvvoF1t4R1nSFvGSOvx9lMFUDQ6xcwXNCL3qeey0e37oQj
	bWWCDglxUCKMosv8cjkV7ym6/Ibk9om6MRiSai58=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658140612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lunYzEW1tq0M5AdvsYet4yKlRRTpOai2X+dR5EfCD+0=;
	b=Ft9Jk3HdBw9YKBwjVwX+0SYIr3LwPA8zNXZ+JWNx9Zd4pBPyOakp2Ofvn41H3Tth
	MbkacDBSp7u/7LTv1YtRKoxqs5klHyiGiMn319Y8qF4+q1lDJ45OOUyBkL8lPIww5CP
	KMtXrHnJRYJQ/R51MAmWSS5ZUjhtd6a6SL/FmbaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018210e1d6c5-6db47fbc-7e2a-43d8-8592-e39750f4e9c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2ff9671b32023861efa4ce5d61e24a216b3584d6941634722be9809be4b3a03
Date: Mon, 18 Jul 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658140612
