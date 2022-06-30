Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCEDECE
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 13:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656594412;
	h=To:Subject:From:Message-Id:Date;
	bh=5WYm2r2vq2GYz44GPPSQLcDmu1yD5uTmMLWngtSw4+E=;
	b=MdA7lEWH1/gvL/ysU5vG/6FLpyDR9IKrko0Ck4ZiSc0e1tzOQYLV6yqaHB0K9ZwW
	5USK1ktYLQMooQR8pUj81LQlMRzS9Z7IR/fWafx92ZWvmE3aTKmGQ0nXVe7UCbOEIQK
	09k6UYbkGH28WFs8ij6uA+QzjHU/kVMGbAPz1iqM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656594412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5WYm2r2vq2GYz44GPPSQLcDmu1yD5uTmMLWngtSw4+E=;
	b=KEkS7CZ+jt7tqrakEamAt4H/nzQh+L7O2JIMO44dlNG1pvgTeLm6n1o0fMZGUtvx
	FdoOdhsxBu1H9up2cQHEDNkXW3g+G1IQUfF/LdGKvTZGkS6WFTMrehAx9Vyt78KpWvA
	O822zR/C6pRz1pToWsCr3iZYeaEOp9BD3w4xprrI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b4b8b31d-0a789f44-4fcd-4a1b-a5bb-faea0e38481d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea1f84c030bc50d557fdf041195c3a4c131e519671b8f4069cf10141a9b03f0d
Date: Thu, 30 Jun 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656594412
