Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BAB7B
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 03:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652152559;
	h=To:Subject:From:Message-Id:Date;
	bh=+RsO8n77pkMBUpTyz9bDUtvFqsVlVJf8r1jYlzlX8X4=;
	b=EigP11r6MNX/52g8qAGxiqGibbToAOfCt8rIJHalIkMybENoylWhSoGk2QVHES7G
	1q5gBRN0yZ4jluWSxJRvpljc2vOLnywJxOO4JA+gNN2VZDVhDUrqXFHaL0GcHavKgqH
	AgL2HqFACovl9ngARzMaaR1yXekCKnKRX88JtSN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652152559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+RsO8n77pkMBUpTyz9bDUtvFqsVlVJf8r1jYlzlX8X4=;
	b=fo0HrGWKvzQzth19Zu8xj4PMn7Whk4pLO/qUMWTiGlM2C+QEtgyy0ntTiGp9uRqq
	Cez3xqCAiEHnErovTHzjs88NIhqFRsMjQb4fFbGeHLNRdS5WzpkSXK344SgB0hLD58y
	mC+wb+ZFWPaUNbHI0mlQbYGFl8uwYWBWEAb31n40=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180abf766a8-67832bac-2fab-4227-94d1-248aed761a46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 758741ea4eee5789bd42059a7682f149529e995c2213c27ca3ab2636098a4361
Date: Tue, 10 May 2022 03:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652152559
