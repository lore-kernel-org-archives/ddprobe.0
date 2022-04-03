Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081C47A
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 08:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648974538;
	h=To:Subject:From:Message-Id:Date;
	bh=tQQUnsMzUhj/MY0PVvrdpywzrwUGlDRZlE+elGMKmVs=;
	b=MovwbeS7usaYkoplL3wTOV1Tm8WrSl+KdnGwix4KqiwhxNxlGTtMdCsr9y8tvIn0
	477Xk7uoYcu2q2jMIyEWuk3xgO5GpRgygMD+6PbhI3S2oVZti1RflFKIKJGLyQqTdpv
	CwyDad+eRsFmiIzLGvmo6BjguJQOR3HNdWEY7zGs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648974538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tQQUnsMzUhj/MY0PVvrdpywzrwUGlDRZlE+elGMKmVs=;
	b=QzWV6kLVUwmpPwDjOSXrYwv0pZ6CiPLCsHHk3cqpowDFiSAYYeWArS6SY+ReGKpE
	CRo0bCFo1Fbm1F+z4QcrHrPy/omL/c1YJ9sGlENeHaT9el9nbcEGPpXB1tp1R2Ypc5g
	eWuozM3ONibNmsmBf+k6B4LbjsT7NbIl86WP5vYw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fee8aa61e-858c8e06-8231-45d6-ab10-40f269a57909-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb32614402a3ee22f78be54a17b8af83df8434403ba29f5a9f6d53ce79c579cd
Date: Sun, 3 Apr 2022 08:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648974538
