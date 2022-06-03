Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152C77E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 20:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654289699;
	h=To:Subject:From:Message-Id:Date;
	bh=eo4/X6w74r+YmSJBzTgUq+N0fctwQsMfrvpFoIcgXfU=;
	b=OTBAlLvil/ok8TSX3GkjcyEMnwjpPatN0ayDX0cs8RtqeXe3d14i355UGox73RSN
	9p5zQlK8eLuPZYn8C/dyTnpGoSFeQC2sX16390oKhuC90QptjZ0vr5CK2TntUFj81In
	mYr8fEPIPM8jAhmG4otYmxnrkZQvZFm/vD66f2ag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654289699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eo4/X6w74r+YmSJBzTgUq+N0fctwQsMfrvpFoIcgXfU=;
	b=eiLcAJaIFnnDcsZT9sCtjFWSkWOimpTdwBEJUfZs0RCCbdp7Jlpos7QlL75bh8Lh
	Hugzk8/2W4J49OadLt1xTZmGfV47RRRvX1gFZ6J4ZLJts7onCfkCbXkTaqBJxKWVlx8
	4XgnozB3V4PHPkK7veO4imLg24WCQF2ENsneTYLU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812b5991e4-c7d343b8-e529-4e35-b909-f4b9bc6b9c45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12f8ce02da70dddc4acb1580edfec5fa3ff7484f0e5fab5c3d7bb04c18670964
Date: Fri, 3 Jun 2022 20:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654289699
