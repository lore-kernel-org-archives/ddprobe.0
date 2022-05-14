Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FED8362
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 00:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652486939;
	h=To:Subject:From:Message-Id:Date;
	bh=Gul7G7GZOy4zoC0TbnaR+dPPUkQjdf532HPkYVv3U8w=;
	b=b2YOwVLEe7EloMDhzQqW1QqRbKVZxOpIRgTFtB6Endo/Ihs+pFgSzOmcP2cmSKKY
	hMPeVyNQnukcKUy1zK4zgCRaTugG5FtEG+NtET0gOC87Oamu1XXCjFYCIalEq9SL+oX
	xMLUJgzlIqsXOtu93WKEs7ySsxpBY0b9zq7xEC5s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652486939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gul7G7GZOy4zoC0TbnaR+dPPUkQjdf532HPkYVv3U8w=;
	b=GY5UE+EuZSf1bD1UHLwrusU2BdLyIC0zXQgT9zWx46V5GoYGAA4PItq6K1GS42RO
	x9c44DzRYHOHHUpGdX0wN+mHusUaRL3eDLlGfIEC0Rf1kVEX0nzY8UMRAfUxLxiXp4J
	of1XI0DwcrSJiJFL9F5Wr9Z+SrEugqvdwJca+Dzo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bfe5a2e2-d0a9649e-88b8-43ff-b3df-d46486ca0f8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a28e9947dcbcee57935052937c0a2fd18ae30f5383322195464cb49bbc994cf8
Date: Sat, 14 May 2022 00:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652486939
