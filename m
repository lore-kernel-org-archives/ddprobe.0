Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7522166D3
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645558285;
	h=To:Subject:From:Message-Id:Date;
	bh=0uJ0HyVG2fImRffqIFZTLaf+K7BPqogo0Y4p7pXwoak=;
	b=g+rJZ3FSCx5jnmNs/TlIxrkP3VGWkbxkWFYt2TlFQCKY//O17j90Br9igQwA3neJ
	DnaiBCVF76TfUx0DkAU6e6FbKndw9HYUz0cR5oi1y36rNmbj6wFXtxa58BwKkRaPW2U
	Q39+9gw3L+dyIKMiAps7q6Sieeu23T54FtjnFkEw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645558285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0uJ0HyVG2fImRffqIFZTLaf+K7BPqogo0Y4p7pXwoak=;
	b=YujHHDbFpO+9o8WXEe3TG6XiUEPcPC6NTY2oitzLdO6z5hvQTZw5LPrLVoPwt0Pk
	pDNHlwCcPFHM4XOgmgaMCs7uHNy5/Y5osot59MzR7qzbxW/FkQziCsZaV43HoqjrS/5
	qQHWCLIcW2hz2ttzPV/JH7mI1fkqJ8Ei0cBSUY74=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f22eac22b-25fd5126-4c71-4481-97af-627329810b4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1897d8a0a7467ef4dad332387b3edeff51f4d34cfa526587af3e5a8a508572c4
Date: Tue, 22 Feb 2022 19:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645558284
