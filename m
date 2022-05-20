Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A5A017D7
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 11:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653045599;
	h=To:Subject:From:Message-Id:Date;
	bh=8Et2KOK6wrb0w12lQicaP2sEoNnzldkxuwuo9o2azhs=;
	b=ZiGU4kCqOU9bIvMET6m5jtln+rJTXZ/50dFSX/OmEXhw/CoC6lww9e0/DrAdxi1Z
	3bxb6jdOXZZYc2PkGiZQzkjcEeYIkyAUCjOzjXRc7JBInUAmz0z6sD1Q/cniA2Po20Q
	ECS1GWLlp3YM9nsQWcJM0PxUWMynGC/KhSDFK/QE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653045599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8Et2KOK6wrb0w12lQicaP2sEoNnzldkxuwuo9o2azhs=;
	b=dARJyn3kL2Uht2PyJKfz9LJa8auKSomOYfHlFw+gjlZhR7KH47xXGdSFVEVMAEBz
	xzh7ela6qS2/x5n3Z5/lYse5wAhGbLATTwnXJl2Y3ZzLsvJ+tMyWLCmh8AJvqY1Yo5r
	tqTHeJD4A7zl/bp/OyGT4z7z1UDUkrJj3/0KGYuI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e1321c35-9867049d-89af-4d1f-b185-e869ee921052-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ec9cb0de2c2606c1390a50fe035cee132300b4e0368fd29d1bf7b1cf1973040
Date: Fri, 20 May 2022 11:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653045599
