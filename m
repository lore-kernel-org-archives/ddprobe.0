Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD3CC80
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644870085;
	h=To:Subject:From:Message-Id:Date;
	bh=kmCWDnWzjn0iMwR1qvcoJvXiH+rnaLIP7Yioy9TZ3YE=;
	b=JuQfO1bejaGOZbAvOrcAENfG13woO0TcMgzfnl/jQc1+q+6MsXYDcc021TU4n35l
	30sOwdJMt2JZEOKZe+zPKaynf5w3UbdxbADUpkcfXVRcUvcAWXy3JRvjsxBZDVp6Ycj
	FO2sIUj+R6T6TK7WLyVm6oRQDcYyVi03vCgp74pE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644870085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kmCWDnWzjn0iMwR1qvcoJvXiH+rnaLIP7Yioy9TZ3YE=;
	b=IgEB23ENcGXdJFjIwM8C12cfRCOTRDxOI7iTRVTgQXkUFN86Zk2UOkQ1k8AUNGrd
	qDVwVSSPTa56ffI9ekWgsq6rONVouJaYZWxp7l62C/cFVTUcrdOb5Zj8HZdgZMcPPHn
	nVo3Hm0TLqA1y1LKo+HEy9GOXB2H2KQ+VlRinLe8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9e5a89f-8e0316fb-eda1-4214-8067-2684d9672ff1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdc6e041747d5762d3601f6bc124b900232b962d81ee205eb9f8c334a7830c7e
Date: Mon, 14 Feb 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644870084
