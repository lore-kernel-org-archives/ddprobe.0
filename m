Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F5817A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 09:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657274213;
	h=To:Subject:From:Message-Id:Date;
	bh=AfZPCAea+3B4YD3j4gsUA5qhGrFKrW3kU4TqVeNntaY=;
	b=PWeQFJx3HiVfJaHlm1z6Xhp1LdwTRGBMBht+Nzd6r08e9re3liFlGh79WwWA1VKN
	BExSx1hOJJx5hzeTHq45SXFAh6rII5IpQBry5r+N5AAhQ1y9moiOdkXXe5h8mKmrXKv
	TnG/FUVuhllBuRMQHAjWQqcICUjGVRAEOer2267g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657274213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AfZPCAea+3B4YD3j4gsUA5qhGrFKrW3kU4TqVeNntaY=;
	b=aCRL+kW015YRk/dGVokr/eXpD7RQlbTBFxGPMIcWU4CV+vnbg7PcyeirwIvqdyfi
	GemXv4LtICZ5LsTZUEz6576xOwvIuxVZNTMNi1tOAzUqIF/TZ2Pgs/T23BodNe5fnFc
	NFZ5NR8UBXQKRys/g4oBt9Z2AhY0N1kogI708Xoo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dd3da035-31b152a0-99a0-4964-bf66-020d2388f86e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c38126d3303bb580b4e529ea6f3bea3152177c6645e88fc6667693cdf798efaa
Date: Fri, 8 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657274212
