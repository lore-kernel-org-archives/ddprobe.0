Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FDD80F
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660396852;
	h=To:Subject:From:Message-Id:Date;
	bh=0a941Ycf5pw3bLubJBL7hn23tSwNpxckufZ1zYWR+4o=;
	b=HwlKxwZHQ4OaEPm+iKLPh+y0rLnfqSGQyjynHVbsMNidCU7tWeCGozjZbt3rUGiX
	mFDVhLkJb1JcKTTa5qZRbjFpWHnDnYdAGzNtyx/kvb1vNe7N+AeYQXl/l0FsX64cL3T
	ntDM/sI6KEDXzZmzalfFp4eKXw9L9ikklAZj5V9w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660396852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0a941Ycf5pw3bLubJBL7hn23tSwNpxckufZ1zYWR+4o=;
	b=MsTX2Zjn4XWgFWitCO/tFSDgPy8oNz1JLEwyd3ee1iPIaLwi9sZvjYwLJzH+jDEA
	+06DA9iP+iAxMZc1VSdyM06Z9AaXVKgDq3uJZ5mnX4u7uC2IRNexxkKoN5G0Al9FG+J
	4Nzb44jq782NTWI/J0bLX49t4LiGVktJb25/Lbog=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182975d5560-46c38067-2fbb-4cb5-8d1d-2811ae6335e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab750706dbb1a34b5ecd43a8038cc20ce55a04961264bc894485631f1405e711
Date: Sat, 13 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660396852
