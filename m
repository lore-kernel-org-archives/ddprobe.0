Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37AF7B
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647824485;
	h=To:Subject:From:Message-Id:Date;
	bh=w9AK0nPTo8+QpxFGQfDAUpk9rko+511zoY6yxRRhDCM=;
	b=RGIn7u1KRp/OhgHN/MgYRfAjrEZ0FTBl4xhANegV2/AU/XtbWfnA+iQIJgyYeAzk
	S/7g1inGqHoBXSpZOIGP5ht5P0u1Ui3u6gwdhEhmMFAKyhjBAGzExKsRe5+y1+2EnoB
	OxR8AgNv6ZBeXzRIisKjUq2X9VoBb83973LvpTrQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647824485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w9AK0nPTo8+QpxFGQfDAUpk9rko+511zoY6yxRRhDCM=;
	b=YOS++GEDFFBC0j8zPt1qAadvJYGvBFKBb9ZOrzJNLChhu0BCPK1Ql+uPFBxdieCv
	advViakRraoKvkR78OVPKJIpkHtWPd7clEsWLp5Yo90rsvQLHw6sk3sAuBWFx8XJagK
	LpBsN8LiV04SWzxBncQ8Bn3bLgZZFtYchy4iOXl4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9fe398c-9fcbeb5b-f5bf-4aa4-94c3-709db8696fff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c0960be995e03c0e5c9baa7334712018fd5db38ac810fb6820295c1fed3369d
Date: Mon, 21 Mar 2022 01:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647824484
