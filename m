Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9771C110C
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 07:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654327500;
	h=To:Subject:From:Message-Id:Date;
	bh=g9zF90v7dQls5srT9GKydvDs3W8KNYD6uc9+rSs5+zI=;
	b=QFtvoIYk1zcBIFd5G6dFQ1axhIWVaMHTwgZ6ruxGoDcXmtKVX8GeSJSilQmNSHbW
	RcR4VVGSg27c4gDvB8u9XIoeWhjDnS4jmpjnaEQPtZOI83812g+i2cug+Yz6P57SeCT
	6KdFx5T/TIwiI6M9JbssSxhZuyjKEYAYmOAZYIDo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654327500;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g9zF90v7dQls5srT9GKydvDs3W8KNYD6uc9+rSs5+zI=;
	b=MhJe+L2QDJ3PNGVLVNwww0wo2x0fXKXcXESjI1YLbIgsH4V97HCt08areCJyzEAI
	8kNfuRjdqnNmk+c++vkaeyvLGpc0iXPaT/OtKd/CoBo0iTMVYpA48hgv//oeZjIVYUR
	r54mhuiLz5hmuQf6R3q3XT4DVK7sxUfEOEsaD1rA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812d9a5a5a-cda197cb-1f29-45f7-bea7-ed1fd2ace417-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03024fc11ee061208a5d075f478365ebe402843dc5c1d98e5bd96764742c23e5
Date: Sat, 4 Jun 2022 07:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654327499
