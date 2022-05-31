Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF9033E1
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 16:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654013639;
	h=To:Subject:From:Message-Id:Date;
	bh=3ZFn/qiCig8nYq6Pvw2D4rGKfB1CDAsAXck1ICPt6dc=;
	b=UmbF+7qVNBa85/fBkON/9QRHEZ2WOiPHN0Gxh+3V6Lv9OTX3YbU4CNN9+X6zVt+o
	b7vlkQFd3/g6FLF3NpBPBrBezBf/jjlIVyATLDknu8DbA0YEABFAvtfVz9G32vzfOyy
	1cqbaQMkWHkUv5j3i0eyv499HiCx8LM0fiItZ9nk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654013639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3ZFn/qiCig8nYq6Pvw2D4rGKfB1CDAsAXck1ICPt6dc=;
	b=aT9bpn+1aRMtedJPwhQsKWj9cOnY1NGVvxDMtsER+XtpLFaVkjy9f29rYKn0qE7y
	xfgg8/n/eDLaRKWRkYeMHrBSjrbyNdufnUyttCO/8e1kxKOXDGTGMAYJrcK6o6o73ax
	YM1KspFPt2jeWKMjEQ6p+6cpzfAru1u3LiOIIe14=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811ae53a7b-05245359-c5b5-4248-a871-054ae457e7fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70c81cb0ff34c0e46f277ea2a4b58b1b1ac988e23917ff624f31f9c9520de8cc
Date: Tue, 31 May 2022 16:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654013639
