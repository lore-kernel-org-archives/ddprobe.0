Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DF92586
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 10:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656325012;
	h=To:Subject:From:Message-Id:Date;
	bh=Nr42GVCkVz6kQ/xkanQo+fMsdpHqxv1gRQ2jc4fFi1A=;
	b=IQB73vHSBcvkv9yEFuN8Hc+GB2OzMB1uoiR5p2OJKmuI2TlN+VJpH42pb60V8B6J
	w+MvjK3l4qUPv6WqRaTJN9C2l39leTp4wyk45OciHmjYntFW0Lk16GHNXQGo9a6t4fC
	4p6MBmUEB5ELqq0Cb/dT51zzq7ZjXDIKkkvFI42Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656325012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nr42GVCkVz6kQ/xkanQo+fMsdpHqxv1gRQ2jc4fFi1A=;
	b=ADOUAMfdWNAfeAXjyc4At5gquHcUgLgKba+nPBfQyNVjfl6xa0lQjH9BrKit8VD5
	+Zrs8JP1n4UOs4+6M++JsbyR/yb7Rmt00w82rRqDPTRVc2xojVZuaf2Y6s/VH25SZID
	/TFWSJAgd+0E9cqYhvQk5wUJmX2iHqErPCmj39dw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a4a9fb46-ae1e885e-4b55-4039-98fd-dd254766e6ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91e7a138d384ab6faa17d3e13766e4e52e25044e63f28c3d148acc8b4effd191
Date: Mon, 27 Jun 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656325012
