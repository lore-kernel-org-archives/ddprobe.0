Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3170F5C8B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659303052;
	h=To:Subject:From:Message-Id:Date;
	bh=3xsW11AzGxoOu/0vKr7gkiOvJ3+IXeH0PHp5rZ4vGjs=;
	b=YWTyLAoD6nedt5pBHemH5S3nf0oGt5K/qPMTHnggFz/q2xdyPradxqtiCMKKLnN7
	hIJwsjUjM8KepmGUg3U6fm0tB/JRgV2Q+SzZs1BOkNz8kL2jYLN5MGrxnhEHdu3dwbD
	36eSESsUQ3C2WQJ8VglBoyGRDUW6aE2z89pAhQoY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659303052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3xsW11AzGxoOu/0vKr7gkiOvJ3+IXeH0PHp5rZ4vGjs=;
	b=JtsiUdgGB/2hT6N9tg/QsYFjqGV99YmfdwZ9zuS8p/ZzgrlIu2CWHd42QY2stRhy
	7XtSMJ0KznbYQMLKGFRGGrhyDVQUc5URNFbCbnBzZ3boKslW3lnJg5SrdV6iSVBeCHe
	91g1t2N56vKzUYm5vlDrYftA04uuz5/Z5D2Pyl38=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182562b44f2-3904cf9a-30b0-4fb4-9f3e-508c03ba58e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9fb89642bc1dcfaf502caccbaf6fc657cad649b8ce689a676fc1b8c7ed917bb
Date: Sun, 31 Jul 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659303052
