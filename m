Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6550D7A
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 05:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652592839;
	h=To:Subject:From:Message-Id:Date;
	bh=EoDZxtzvrxdCCFwt4+iqyIQVz+Naeu9HJNsimg44Q+g=;
	b=JggcoPgse1xO43PTKNvbKh63M6nSZDHBhBfPGLmOcyFw6TJw4eXGCrmOZuXcHKtO
	iuYTZFaT/b1Fc0eKBOISYtSS3kdY1WUr6T4iG8vjgU2w42073WL8At0zqKTDHHYsKeS
	1mahYRRtbEJzKcMJLETyTQqzaMoYtivpPjEKbC3o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652592839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EoDZxtzvrxdCCFwt4+iqyIQVz+Naeu9HJNsimg44Q+g=;
	b=P63ya5oneBFs/nTjMYX9G/EfsT4GhrSI8dvY2NjoogKGlc7478GNmbbFxmDst2QF
	nuPvP43Dj55n3qnUq4FN04cxHyiuchhtsR4xqnoj23/L2lyjP6dNcBz2Bk9SIjTUYAl
	ELcc+cJTHuh2hkEc0hSPtKEWmvExpJAeljMfl7IM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c6358a76-82d37693-ecb1-404d-9031-a209cfe27129-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9b71fc65005798da552b216ad7d0c880de95c279159ef3535e9b7dc71d8077b
Date: Sun, 15 May 2022 05:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652592839
