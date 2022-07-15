Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69E33211
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 18:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657911412;
	h=To:Subject:From:Message-Id:Date;
	bh=SDKOuYxD7JY0YNDRyLspdQrqlR3fY7WPbsJNJNpXWms=;
	b=CZRbnmi35F4gkg+kLIQuI9ryadZfrCVTzftj37AGxD3/N9BvXePvXOl9Pavo1oRR
	/LnjNsvYefYp23sbJb3Mr/2cKY5IrPf3naYQt2NQWdBaguNy2UbMDB0mfX4ftONeasp
	/pKeLzuC2aDIJxa/+Gx2tWyrXptJgJCtMkWr0TTw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657911412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SDKOuYxD7JY0YNDRyLspdQrqlR3fY7WPbsJNJNpXWms=;
	b=FXOJxNmeHLF7UZ495izdxIMScpuvOEy7BrHD2VE5OWWJE8FQB/Kj8Mdqg81QJ0wu
	T3ZfaHnXWP3YNQu6cnoX42k1D3ZWJld0CJZUJCXLUCC28Du1Q3b5IL1nRmYIlt54Hx9
	zVCNFSea7JZbU8y8YLEc1uJNoDebaMejOI+Fk1Z0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018203388633-630e1ac7-9c87-4e75-9cac-f5bd6556d416-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 546db1bb1b015119bf143ae3ba975b75030ded68d328ec5882cdf55fc5694203
Date: Fri, 15 Jul 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657911412
