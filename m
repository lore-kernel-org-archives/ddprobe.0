Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C53EA4
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 11:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657367812;
	h=To:Subject:From:Message-Id:Date;
	bh=frgXEvYBl9SXF8qF3OG3pcyM7uwLyicJ+S6T2c7w5aw=;
	b=HZOtaqGmTGVmmFf2XT4Qr/70ypO91ElNLTf9fcIC6gY2krpK3EAEApwAEhMskgU0
	EvrPkp+5PTq3viazZt/T19lX8J3WNF0Iw4rweLzWy9KD/XBiLK9ZQTSgrO+/eHu/pAr
	/6T/2LPMPIxUwlhHtpe0CK3R/QyhtcKngI7ktBZI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657367812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=frgXEvYBl9SXF8qF3OG3pcyM7uwLyicJ+S6T2c7w5aw=;
	b=kEDlBLtjhJ2c3tDCNIT63dCsQCBcQL5qjAYiNDzTmo9XpDS82nsQeV6yZFcIW4Uc
	ru4npJJBMumflwM2ABtkbEJnj/wx/Qim+cm/AdNrHODSVPN8T2p7rZpL9VYoDHNmLvl
	XQxmH8nmoArISzxOD1KwMr4bM88LIaJ0LpWCZgNM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e2d1d8d7-479b4792-c2ad-44d5-8cca-13419f892153-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3bc7b9235ef6e60472d681109e14d9902674544cd0d973281807ee18602adbf4
Date: Sat, 9 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657367812
