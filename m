Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738457A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 19:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657308412;
	h=To:Subject:From:Message-Id:Date;
	bh=HJg4cre/13TFeJ54tXUDadAzBIdhEEdqyq4mlUkVCSQ=;
	b=WT24Rl4cVFB8Qeiq6HHjVGGmfLIVyDWj0YEJy0gb/hvNlJmGLEGPGE6IOhB2lICZ
	hrUwf1utZaGKcIuZtpZtrCVKA4E9l0/6GArisqSDDmmoJupHcxfUlrpLSeMFYjKdVtw
	oB8lyObl+KnxkEzY19zryPkP6SAKvpCbDFs3oeok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657308412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HJg4cre/13TFeJ54tXUDadAzBIdhEEdqyq4mlUkVCSQ=;
	b=kTYLUVVQvZV1MSLk6sKJBoPrugad5I4caffJFGrbVarn7F2zRCjGq5edM7x3TI3M
	ft83rutt7yjguuvIgRiEhngKvCzBbWjToMf0gqurSvjBW1sncsB8GXqZxU1csRAadJR
	wAXjW2NyyERP0o1FAYjuN+e2KZiOUxnoT4YDylVs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181df477991-2064ff49-b6f9-49c5-9a3d-b6b9b33d1d81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fd8797c2d8776a77320875daf28a5ad802cae31e123475334b0e7ba5947c8b5
Date: Fri, 8 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657308412
