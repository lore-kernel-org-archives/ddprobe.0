Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6113910F3
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 03:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656647212;
	h=To:Subject:From:Message-Id:Date;
	bh=BLx2MGrkn9bBoX2tDK+Mafw/XSQ8Xm25cS/9etsLUwQ=;
	b=lc0/2QcTOiU87BADhHzJa6bxaFarllRAB9D3Zrrxq6DQV7z0STP+0PCpvIztx881
	r/sublC3N4t3Ei6fau2JHRTYUHic2t79JXelYk1vb4b2qRZIotvR0g3YZp/U+6yEud8
	CObC+3sjY5wrMFW1UvJtcrpA1xXkj+AFiwFlHuM4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656647212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BLx2MGrkn9bBoX2tDK+Mafw/XSQ8Xm25cS/9etsLUwQ=;
	b=Ubl89PqMs2qGlzpOmI+dzE+G4ZxEQcR4yAdCsTh7lkvGYZVuxbJMtATN1PHNyIqq
	RidMZ8bVj09tK3iucFwcR56/udKewTxo4Vr1H5FI7+d4H/0A6U8rZEE/xcHeR4GVEbB
	zyo4Yzf4zfaxqDiKQktjuY6FSiDzd2uR7Sa02EZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b7de5d10-fb038638-9477-4fb1-b12b-c8084014834e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c71347f1ea50dd9647fe673530611d7c7ddee691a0a1d93ed0e56342672da0f7
Date: Fri, 1 Jul 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656647212
