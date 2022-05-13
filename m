Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087B8210B
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 10:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652436359;
	h=To:Subject:From:Message-Id:Date;
	bh=vdRzl8qvkv1m+Zt+snREXLxHtUR58axQQQmlrQaEH60=;
	b=Oj89RcGrfzxnT8Q7mLqa20LHPqPMyzddpOQq9karrKl0ZHjHRlY6T1WgNqmRqTCw
	F81SE6MZNiMX+obhMKx65+BPtoKt+ydrSRAyILABP6EGLyqxzFAjvtVy4hy4PT0yz/9
	t9pb0kcwOgrGqkV9X4EqKZGhFGu4NmLruwqIn05w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652436359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vdRzl8qvkv1m+Zt+snREXLxHtUR58axQQQmlrQaEH60=;
	b=SbPVvYB6kJdUI1C69nAqj4Utge12HbGr2PL8NJkgFdh0tOso4qAIN8JeUbj0D/YB
	EDUtMM1QeDyHnlqLmzT4wZqtSgWsVzoqsI1mv04xLpxDClnQOTwDAkO4IS/WLFVPdoj
	C3bCP9NkRbnBdwCyGSYDznNhWfkZyvTU89UmakiA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bce1d8a1-7a6dae31-3962-46ff-9762-7e6f91c2c58c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 378958a59295ba065ae718ecb36d80d7099db80ae8da9e775b2e40cc226f4064
Date: Fri, 13 May 2022 10:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652436359
