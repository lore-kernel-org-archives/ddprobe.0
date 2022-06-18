Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13EE7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 16:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655569379;
	h=To:Subject:From:Message-Id:Date;
	bh=niQ6O7lDpOda2MMh4oO5h+cR0tXM8iJyeF+5YrEOeiw=;
	b=Gtp1iLYZeHolt1dNJDeyQWtmhEx1XTwY/R6NWG1SfTcga9yMOVvnoa7ue46/S3zU
	ogdYknCSLubAtU6Pw4QhYw+dCIACRpNKdXvvAZ1xIx0ONcM39XQagBRLlAJqgg9C9uL
	7Yy0Fj88XYrSgTKkD6CQ4/SeeJtbQCd8rWqlthVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655569379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=niQ6O7lDpOda2MMh4oO5h+cR0tXM8iJyeF+5YrEOeiw=;
	b=jLdAazwi+XbjsamtLiAeD9UgnQ5+cvzvlZ5gqaR+zmdeFA51HqtDVWEdxLvQyn/A
	JFRBuZaPWkQg5kibCxFNx+SfX29J4IDp3iTSzSQWu4Vzz0BqmNivAXVzWa/jdyUG+RP
	FWoWDfSKGd7slyvq4bHLozne0utc3x89ySXqdqkc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181779fefc6-5b1fb903-2348-4c9f-aaf3-ff4e648fbbcd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba9929687dcb0dcc557922f9fd1eaa650791e186fa8bd5a150833329f5678ca1
Date: Sat, 18 Jun 2022 16:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655569379
