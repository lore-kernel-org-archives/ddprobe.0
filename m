Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F646256E
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 23:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652484479;
	h=To:Subject:From:Message-Id:Date;
	bh=PcbpPInrX69uFIqWb4DJ31MHp7+IXkZGoqMwbOkOgFk=;
	b=jitlmFBbOZVxXVvi4wKxA7utCGLktf7/CW6RJRCPU/V0WYSwJeT24X6wNxXpFWaJ
	w3WuLYbtJTGN6z0XJ8x2/gIi1kmAHUkZYqPj7MMbfZENn35oYZNLgB5OF90SJnNTNSD
	zGUhC7ETwsKRz8UUCejE/M+X7Pu78A3r4LZecDuA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652484479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PcbpPInrX69uFIqWb4DJ31MHp7+IXkZGoqMwbOkOgFk=;
	b=BCJU4RS0V3nrsFgpB02TbA/lFwMG20H6qa+rOMNgxEnuAGMQ3/46nCbiuc1ZdYC0
	AgkQzmAoVqhpZ/CCudB2zgyC9ONnyqLr6C71RhFM6SepifGuECA5SBvh/Vc6Olm6K01
	y6mBmy8QgWuYkSt7sPkzjpLgqFUAIys58Ni/MUoc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bfc01954-9413755f-9001-4a69-9758-69bb4ae67955-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b55cda7e51422853a4d33b0183bf8ca1fcb55ac9231d1194b60f439ca97bc12
Date: Fri, 13 May 2022 23:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652484479
