Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A83037E
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 17:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646416284;
	h=To:Subject:From:Message-Id:Date;
	bh=tS8E6/FmFgMA/l8ysfvESrxnY0Zj/JBjtfu0/qiTaoM=;
	b=Mo64A4zPTEvziOaAuCCMox8V1w84pVVM8j+zAv8U8h/WjB602Um8GK0WdV4f9pLy
	+BDVVJEDh1MFkqqtv2k2QkesazjOPLHxb4qp1uDTW5UCGp90bm2cyd5ZlQ3jnja8G2y
	bMJHIVr/mUZ0ZvieKX/yeivu42NO+ke5ys8YyONw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646416284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tS8E6/FmFgMA/l8ysfvESrxnY0Zj/JBjtfu0/qiTaoM=;
	b=CfE5dVAg5aE+Zuv9I2wy8VChlh+K7g515yMppsehy/G2nmlRWChRLdxq3PRgc8Q2
	+gMrUxf8TR1J2TVZ/RK94a1lxGIUHOChkZjnhortyCGrcOs2taZY5Zmk4Y5E2jKN98a
	fD8wntlyJSQbHUl/eHCZe+KGcajJ1/Ws08rejhDc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f560ecc57-6fa020c8-6680-40ba-9819-bc80bca5bd56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9af50015a24140a3f3e1e728017872ec258583a277998500995695e88978bd5b
Date: Fri, 4 Mar 2022 17:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646416284
