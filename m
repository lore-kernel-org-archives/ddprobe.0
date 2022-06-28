Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2D1F257A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 10:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656412612;
	h=To:Subject:From:Message-Id:Date;
	bh=Q5j9hTkPK7Ii8R58bQ1N2QIm/BwCSWT2CZj4ELa3Qss=;
	b=Gfmo96+hUGuJxYjvYW7mZ9SpAqI8zu/aHdAl1pZFsPe21AfRGDAXHUMvEmz4d6K4
	wdrPOONRD6hu5KB77Tk2CS0J+5ppeJTosaHu97g9OuD7aqrs0zzSVcySpucgIXOT1+Q
	ECTB2Ui9saE9/zLPNRG7iq1wFwg7GefPOvZXPR7s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656412612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q5j9hTkPK7Ii8R58bQ1N2QIm/BwCSWT2CZj4ELa3Qss=;
	b=BjpWWZekqhQ7AJaxoOrRmBRd3deNxlRca7bvcsyJxQZ5CG5ixynnbdvwZrhpuf10
	Z+xQw+aio81OAuyHJxvOD4bj/uwdPWyn4UvkwlkftbFdymYWyr5LfOsLMco/ZtmjKoq
	3IYThjNe5G8+KOBPn5wAYWNMF6aRByxUj9XwtjoQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a9e2a6a8-fdd1fe96-4dc7-4c2b-a6ba-421a5c0acc09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ceffcc24666aea409d09d9d715f2fe62b6e43073309cc5d155d3b00991434b60
Date: Tue, 28 Jun 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656412612
