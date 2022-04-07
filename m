Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8517420E9
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 10:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649328778;
	h=To:Subject:From:Message-Id:Date;
	bh=y1qQkESWtQIRNOfxYNdIitSd9zFoA0pHbWMMTy+HBxo=;
	b=drNgToiPa3mwGGubTWeuuqDbvQ3xEMQ0/WUEjHWhNDlwC9YsSF6SzY286OnvqxUe
	nq1Bp0JrmkigeRD40ae23j7vSlCX8nUmKnmvBCVJA6LBk63MexePU31M2HJIPuiCTVO
	PQxKiM9uTCxCPNIXB/OYQMIS6J7ccj6ECQ+he3ew=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649328778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y1qQkESWtQIRNOfxYNdIitSd9zFoA0pHbWMMTy+HBxo=;
	b=IgzeITPR8VA3yf1Ls4hjteXT0L2tBY/X/8IJkk7bfIh+aom10yfappxrT5ULOm3l
	FuHE17G1zyovTRO8PIeOHjTH5QaQxHUL+Oyo4JfzOIfN7zYaxcN+HeU/n0ZwDnA7qDc
	p/tbP5aUeoGMa4ujORkdqAuhBWHogibPM9wPxGcs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018003a7ebf0-c742483b-dcf6-4d0f-92c9-143456057c5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3bea96517c691a5592dae20d78239f3816ddeb254b3f5bdeb4215f217da2cd24
Date: Thu, 7 Apr 2022 10:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649328778
