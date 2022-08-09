Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A82A23C6
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660032652;
	h=To:Subject:From:Message-Id:Date;
	bh=j6vS0gBRf6quuMrs4Y1W8QU4H+7IZFb4OzRW6Utl5aM=;
	b=j7GTSU4xkVfEN5L0kxyINNiivoWNzo1gfLf+cWKPikTmPFDRYTZ3plIBR3XgR5Xz
	vqAZFZ63VGbHHjAwhhNBVNBicmPKE9d99qSBmymFQi7BivcxFYhdoqRhcyIBLFYGahC
	XNsTnPKWvlwFdoafS33Y+oI2B9ACH6gwBCHXuqXI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660032652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j6vS0gBRf6quuMrs4Y1W8QU4H+7IZFb4OzRW6Utl5aM=;
	b=ZVhyZOjE1QynoGlfaJqSgGBoa7vQhDaUcOcjGpDho692Qpfs3h+2FqDzeR/pLFd3
	6VrEihK3fRuVg1h4v1HHg8hL87dqr37uDNwpdvkrFUHKF1U7cny7NdbckEpB0Lc4tFn
	Bl60Ckl+d0FeAWJC06GLaaQQpVHbATqtwa6FstAg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018281a8151a-767b5447-16f8-4513-91b9-ed850b604284-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b4e93e2544f1b9b54a3c091231b52312c4ea48edb28e2443c09364380ba4845
Date: Tue, 9 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660032652
