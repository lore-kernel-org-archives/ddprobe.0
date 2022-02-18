Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8724A4ABF
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645208484;
	h=To:Subject:From:Message-Id:Date;
	bh=PRgpgmXe7S/wp1oUl7Ja/P3KQIZJGeVpgnmtdQHDa+g=;
	b=OD54XwcIOjVbDAcTfVodfG7CSf/WY7BNPhxJnJWeLY8ksZeO+QbXwanLsKwulqtG
	hz1pFfdhn9FnkubD2fWTxzhFi+8YAtSLA2b/P+QkKlmbZ0L1yLJIPmwLRdTb4uw7qvz
	WBunpFVwBqdmMf0eG6sEqMM7614rz24vKY+8okR8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645208484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PRgpgmXe7S/wp1oUl7Ja/P3KQIZJGeVpgnmtdQHDa+g=;
	b=Hx6TMM3lKhr+57mCQ2mxt2RbtFg+rX0R6fcBHSOVnF9mZSvGIGCQh1aFCaiztCus
	NZgVwPzD8XLnzSbltn0TVXi5d9En9VAz+fsgbfFj/oX6DELbesGN2eN/I4mNWEGXTJ5
	+JTeXM1gObqpgBNUHKdpJlDe+Uz0BoJd18RmDcEQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0e113ba2-5ab7c3cb-db11-4a19-a933-9ae25f595169-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d75b509e3b545071276d5737ffd1a1353dde30239d5a764832a0c4d70bc7178
Date: Fri, 18 Feb 2022 18:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645208484
