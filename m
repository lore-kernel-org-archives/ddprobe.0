Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38BE6641
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658869853;
	h=To:Subject:From:Message-Id:Date;
	bh=0PhcFTCx1jEwJSK5M9Con2r6+tcO+wrRn7VOyYrKMTs=;
	b=gIfilgI5B5xrfB1eiVXzUlkmjpDFPVFBwUOPjOKhuZnSnUv6J36vHaSxWoVDFQiR
	r9p3nnrpJqQpq4ZxUaWyyBhHJKWHkj8UONCzuMOL/T/Mqan6kN7XhP8s4SjjytrIik3
	I/dYiX5cmz1tmZHHBg8yQOXO9NoQRWX4PzVd/NAE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658869853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0PhcFTCx1jEwJSK5M9Con2r6+tcO+wrRn7VOyYrKMTs=;
	b=Z0vmTsIOK8p5rzL9++BkkGXDtXpd7/sOX/XBVGMeS5I35JaoLbrPt8U9dK6LNds5
	6NuAaFBmWVX/790agQrboxs5YXOq05Jwd1I32rYVWXNwm62c9R7zqvAuZLKHzxjNV0j
	QokVt+F5xNtKzo8H0Kq7qaBHiKFdkq1m7bTIox2I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823c5929ab-636e2555-11bc-420b-be21-8c1782262616-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 962b076832f0eaf756aafb5a72410a851e75b624f4347fa682d7231aba785558
Date: Tue, 26 Jul 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658869852
