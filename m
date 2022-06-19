Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C3A7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 02:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655606279;
	h=To:Subject:From:Message-Id:Date;
	bh=Nnw1G6DUFbX6x1cJCsTN0q8M10LdT9chO8VT7XFTnz0=;
	b=aZ+5gO4esTxBe+2Bn+wGc2IIbyLY86odpa+0BM9xpy6SDikN1oMEBdYqTvvYc2zr
	DUHGjnRZhQzu+SzYHO4DicITEjBlrDrVt1+yrZqc6eYpqNEsXQIJuxCjMNI2Atfpq6y
	QGXppdxWmweo4vWGmqGZS0Qs5iCTrEDN9udmcjds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655606279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nnw1G6DUFbX6x1cJCsTN0q8M10LdT9chO8VT7XFTnz0=;
	b=QVvZAyXHOm6xgh3aqp062jfHqiSjXNeB2z5Bj4NN24McQ5y1pqMORAhCnoqmhUkd
	zNQ14czo/LV1f+paTopH7isoVvn4fgHaSIf/0G/KIDyx5OlyuHBwzWAhoaCG7dMDLQy
	7YCcc24IchdKmRWKow4iDg2F0Jx6vcmNBt6u/SJU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018179d2fc97-1b7226ff-2f51-4663-b724-3868ed0549f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b4cec657d6729fc8852a22007b57a7759871a7a0f379fb44d5ff551bdcedfb4
Date: Sun, 19 Jun 2022 02:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655606279
