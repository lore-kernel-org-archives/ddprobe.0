Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B62185D
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 13:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653656879;
	h=To:Subject:From:Message-Id:Date;
	bh=7pbKlUAMeCOIoUekquz3AaAjNAMziTBAjHYGIvjNurY=;
	b=I5zR7yHTwA29rwU7sqDp95RCrw1VFhnXsY0YP97CLMdiO9/KkW6I1UrhfG6Bv4e3
	0psCwiVc072UioPRJvgC+zp0xs4b1k4DvKeEjCV5sBzIolgeZSanqdCnENQ9J6MktRY
	mKcJLA/MryT8QQTst52ar1USi6PcV7GRA7gOpoFI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653656879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7pbKlUAMeCOIoUekquz3AaAjNAMziTBAjHYGIvjNurY=;
	b=EDTVwE99nQ1S0n2kOGa2H5f1F3uM15Y0DtHvQP5rJxca7GzeInYOeaqql3k7zE5P
	yfyYK5eWo5LcvThvKdfMSSqzgg0uomsFDrOIOi6gorm/U5SgSZVjl0YR9dU6a4Eu79V
	kjeqyFqgyVs1id2uASQxL2od23kV1yG7wsYc/usA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018105a180bb-63772066-929e-4e1b-a3d6-6f3b0151b930-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e65d67850f7cee32217815cdee2e74d83464e51891c617391ec64c63f0efe93
Date: Fri, 27 May 2022 13:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653656879
