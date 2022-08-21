Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9ACF33C2
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661104852;
	h=To:Subject:From:Message-Id:Date;
	bh=36j2SYCnKIsv+yeC0FoXRGQebYCu5kYylQ5kr2zAd0M=;
	b=jVGSXkwxVTl+PQEDH/L4vyPYvyTsm1iyIeyXM37UbCUKGqBlyjDlsGzykWU2lwP1
	eP/urg/S+Og60HAoUjMmxE80e4Ld0ee0WwKbJ47t2+N1i6x1NeGyrM4cm8X1ZSwwHEg
	rYiHFRXi07A1DoFPyobS095peOCyPhuDTpCn5xWg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661104852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=36j2SYCnKIsv+yeC0FoXRGQebYCu5kYylQ5kr2zAd0M=;
	b=VTdyFNjR+mqqKN9tI+cfkkz42p4L5yQzMwbXg3dYkvRhgLH5I0nA+j8VOgHxyh3z
	Oy6SPv4EULJosKtu0vSnBH2JRCS9ImSjDiYRXDWuqCtY6nniVvKKjqK8ShDAIvsYZDm
	ewHw3EVr3GHtg8hogr2q1fgVza/qsWpZPkj/Wz7Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c1908e4b-319b8171-d39a-4fb2-beef-f7ec198a09ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa52f93ee1a136ff802f6f2ae2e485952c14e9fe37642b5fd9f25082f1f0c8f1
Date: Sun, 21 Aug 2022 18:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661104852
