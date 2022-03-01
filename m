Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6997B7A
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 01:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646098584;
	h=To:Subject:From:Message-Id:Date;
	bh=VYv8gNiIKAyElnuS3FkngzSLYAD/OARfkaRJFsh7kQ8=;
	b=Out9HhJu2nuGFfjy+hc/YEetfv9xFwk0Izt6Uc7vpZC8fcwhlPJaGtfu9Kpx9V0u
	bq88plh3L9JomhFcPGicK60erBtR4eYdFtXjAjppVCEQhzmbYxPtEEpTAmIyjYXuKEL
	lq79mx2Gy+alO7igLYbJoJyV8SNTswOjVOAFok1Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646098584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VYv8gNiIKAyElnuS3FkngzSLYAD/OARfkaRJFsh7kQ8=;
	b=FhQnU75y2rFY3KwXcBIaHq5UjnS4/Uoo1eSdwPJ/AD8+6/RkCdlfEgj5V4V13bKE
	o1zaIQgu9/lQG5sG42oJHqAX2hCyY/3NOPDd1a0VSnb2qB5Eji5HKwOAueeS5O9RlaN
	ZCCX7VQz+6CoTH243FXn+AmjTBCO0BBEKRNGBH3I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f431f14ab-40f7874e-2d99-434d-a65d-8355edad722b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 580c6c263209d10141652c2dbccc267f2f45790560fc689569b14be9629ebe3c
Date: Tue, 1 Mar 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646098584
