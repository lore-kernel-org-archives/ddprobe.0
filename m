Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C083D65
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 11:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657627012;
	h=To:Subject:From:Message-Id:Date;
	bh=GSvzbrnAaty6MSnkodu/YMNpDfrkQABuYs8ATiZDkJo=;
	b=XZfXU1wr/QjJq28HQUsWC6Mv8GrNwcsK/Zl+Oi3Yfvquz11DxlG7et0l7NABZGjB
	B/YqKHtN/OjaDaMcrTR0q3yGS0yImLDfDLsF86JCuUxAgi6cmeu3oHiAPELGMiXkPdk
	t+kKG/+SCM8wQGO6LQvSPvAdjhGMciE/z1mDqwm8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657627012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GSvzbrnAaty6MSnkodu/YMNpDfrkQABuYs8ATiZDkJo=;
	b=If2zJzkSYOY8WiLFVUkVbt/oUV/oHuFUsnokYLjOghwDEwN6l9pj/XdotGFimjPt
	IJ+5HybdBhrV31y3LqfW44S87mp56urNiMu+/AMBqkVOnVNjxgRF6BvoH3tz0KF4wsH
	Cu2236RDRpIfODXSQsYISUUBU22pYNQIQKD32jns=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f244ece1-adf4abcc-14db-47a2-875d-c9b22a4f4876-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 588156e988cb9e89a3cef794324b9176a2e34377faf5048919780ed98cbf5abe
Date: Tue, 12 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657627012
