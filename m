Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE2B97A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 01:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654912079;
	h=To:Subject:From:Message-Id:Date;
	bh=PHC/BXiYA23Tttt3Ky71CTyQ2wIsDL2g4z6XZhTq/5U=;
	b=CTeycGIfLwY2SlZlNOe8vwVj9Xx3ZflJnZ1KantQCvyxQxOU7oaWQmPvhe7p9fSD
	5iXUjsZlYok0SoeLXsuenKEaW5scerq0ZUI3rZHYK5wVwMfhnPNwZkS0IyN0k7AzQ37
	3CKtkqMtxr3FIE+IeIFMfWfYhyewWiJY0staNHhg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654912079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PHC/BXiYA23Tttt3Ky71CTyQ2wIsDL2g4z6XZhTq/5U=;
	b=Hg9+0LyjQ4E7PeG3ELqvMoF7w9Zzi6gdFIbxccbHS4urhGxzoqlJ/OoSJO74elDR
	gJtwvdyVo6J+GWFTyxuzgClRt5LofPOyWEdLgJi07w8ZF3SK8a6S1Zhi9R2Gxy+s/ZP
	p452xQg6ULKM6CaBFPiOdFANzcZmniLio2no/vm8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181507255c8-8d99fbac-c89f-41b9-a6cc-751a8a7c3350-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49408231c48fdbecf0b24766cb8e287cbfe5d8fc73e3ff005c265309541606e5
Date: Sat, 11 Jun 2022 01:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654912079
