Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135BE7E6
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 08:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653379259;
	h=To:Subject:From:Message-Id:Date;
	bh=wie8Nli5mTW7ZLqfsNxBhs90rH9BJx5q/xXIKdDIDJY=;
	b=GqKAc/p4BFNHS+cW21BovGezt5maW6P/FM+8RjgNXDd9NdlPcq/vZxb9VJAtd6cD
	NDooUOvTLKfMbakuVnH5fAHB1van7J4qHHRQnlvZj1vB50nj2NB3h4JAyQHmagH15OJ
	4qGSgt1/6vctx//t/wCfgm344QpgQIXffPgO53BU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653379259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wie8Nli5mTW7ZLqfsNxBhs90rH9BJx5q/xXIKdDIDJY=;
	b=QeOREePDeywcb1aCKjdP62Xhs0zAA1l5mgQvLKIjE3ATwUCL7qD1p63nFl0B1X2u
	oV7Gu7w4DBwPb4fBCC3W2o1HEGBHrh5ZkMBLY5kRe62SyEXeX3Qe/pp4deJFHbnm1Em
	+7sAj72slZNvfe96ZXyWrjeOKfsDAaVQqUQXyn6o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f5155b73-139952cf-b821-4a22-b3c4-700bdcb9fa54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92f89ae5fef0e1bc4fc84ba497c47b2a25380c98f72bf4fa173671f83deb6edb
Date: Tue, 24 May 2022 08:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653379259
