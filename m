Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F03A29AD
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 11:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647776484;
	h=To:Subject:From:Message-Id:Date;
	bh=dmGO0KTi5aHNQi/pPjkkjYxB6VwcaALhSwzW6fvbv5k=;
	b=F6GJwLv9uyeMcRZHHfRAKrumnWM3pJ183zyCBxCMYu4B0jt/LKCzUQ2y8RzJQx0N
	4TJaG2WOjyqND1bAuj68FvrfL7RJJGT8IM93xnsY/qZl4AkIYn6DX2Dz49b16SzE0RP
	lcFmMUydAQWBLwFL78DihxoABo/ty6IWyaThMzwQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647776484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dmGO0KTi5aHNQi/pPjkkjYxB6VwcaALhSwzW6fvbv5k=;
	b=DlGyn+nVEqWXUpwtZy7Uir0uelN/pveaj7gxnfX4/q2jMX4axDQqKkfGTlF5/Zn1
	+mdFEDj2PjITMVzs8hvX7lICuQcGsZM3uxZeMht2v0XbBj4rhHXZLhx4EuWmpY++I5o
	o8H1J9Sum8GmiZrwq3ax/0aM3fgQIms48fOPaIto=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa721cd9d-4672dff7-2b7f-41ad-9f7a-f1727c538d4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d047631842879012f1f9f5531d7817ad07f1e03a36eed5a7d21f8a381572a31e
Date: Sun, 20 Mar 2022 11:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647776484
