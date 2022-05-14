Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C0C368
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 08:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652517899;
	h=To:Subject:From:Message-Id:Date;
	bh=+VWiZmaKBfI55x1DqqJHLChnlLusUdJpTyOIIrQj0tU=;
	b=CL8D8KkCcWX6r+BeNUPGXPI0RxEp/4nsTghH4IJVkGJM5kEw7sGPxczXEfBkFWG5
	29uJB0S9r2+qZnxDHAvzIdpJ9hVXwjTnYZByu9/H9GC+UciAkUP4HO1nxesXRgl0wp1
	sucaikSLZ5BFyDHW8WdqWldniVe/TEZpnZCfryPE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652517899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+VWiZmaKBfI55x1DqqJHLChnlLusUdJpTyOIIrQj0tU=;
	b=Q+Wgg8Vrd5o4DMa6ANr3NVvZBCatFFtxJLZS8ME2vI1ZghSvn0KFJSD9jCvopNY3
	vgzXV8kwiSC/yW83JcLVWc6w5dMHT3ydFKjai+8kZYkA4PgrW8omeYgu6QWP/Q0plpK
	jYKf4LZYWJgY2rCKXqnMH2cU5WVOUyrshEA7ZwxE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c1be0bf6-12719a6a-428c-4d06-b2d1-ee8b30ad6e9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78047b7292c92db9b4a87b6dbc3ac7c6995c4bde9d8fdf54a1995f9192c152bb
Date: Sat, 14 May 2022 08:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652517899
