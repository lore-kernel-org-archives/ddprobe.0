Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC5562E
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660291252;
	h=To:Subject:From:Message-Id:Date;
	bh=I+3rcgOBqNHktvRP8d0YN1G6XhS8OQBlHRAJMSqsLOc=;
	b=HGXgYA1++jzTVhZxwJvZtyIYD3RXxMfzzHzbg9Oxpz3NLXVWI7R+tfesa7QJdcV+
	Yhy5ECqOZq2AYy79FoShkAwtsLFJ0m7wB/heFQ9ECOIiA3lXdwnafm5S3sOT9h3SLm7
	2x+kua6AyzPSyq+6MwivKUNlNzEsm4s/Fmil9j7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660291252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I+3rcgOBqNHktvRP8d0YN1G6XhS8OQBlHRAJMSqsLOc=;
	b=PzQgB7+rpcm4l1qU0Kx2JUKlnygsqQoM1DT58JhOpFffBkUam3lmaFwMr5MKoj4E
	AMftM4jWkIZndu6Qf6YGTJZssMDTZ3Lo/LH/kbCPK+c9t+NqdDt3gA26AsgPYrj8jLy
	mBxoZFbNloF2mwq3q4Pkj6sBzJHNVFMTld6Wnuxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829112014a-d8489c51-8643-41f2-92ae-56c0a764400c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79fab4b4d79a45348661824e2972ed5a2b7c772677ecd8e48e70bacd83855cd7
Date: Fri, 12 Aug 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660291252
