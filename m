Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498527C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 19:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654631219;
	h=To:Subject:From:Message-Id:Date;
	bh=SYxXmkoRclhwaBoHg2aHuucsb0aX5xcYCPAzPciHXFY=;
	b=la3bXTHXhje6P/m8xp8KY2Fi+JDL2Vc/GhpX7+oUcudY31Zop5H0yOKj5yZCURwi
	NqaIt9Ii3waLhyBaxmb9LHZkys4FxdT5uaRPk3ZxVVmLkPMgPY0zIAzYXNpEqyThCmq
	QM9GbGdKHoQKUtty9TWfc2SaZkmq9iBq+mfqBWzU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654631219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SYxXmkoRclhwaBoHg2aHuucsb0aX5xcYCPAzPciHXFY=;
	b=AkgM4Maa0c9r8Bv5/yeEKaXHihD+v8EibfH3qHuYFA33tdzRWkgijS/sURUDWlga
	+quskHqFLWlkZDAP9cjVrKY8Hw4byCn2SY8hEXPooemmectoYM6Nuf5/sy/li2OpAuF
	1ztGsE1O8UR/KO7SIYx5Q9MGqNOZi9mo8+gYmhyQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813fb4c070-0c5814b1-07c7-497f-a77f-b0ee13161e15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d3fda734b3a4399c4e4cd8c20ce4c59e37b1e3dcb79b3657b8e0897246b5e57
Date: Tue, 7 Jun 2022 19:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654631219
