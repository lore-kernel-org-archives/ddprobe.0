Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201CA7460
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 23:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658445412;
	h=To:Subject:From:Message-Id:Date;
	bh=rzVEOrmFnPmiDqoBjeCJVuDdMwQ7RZuuoyWcePoDSRY=;
	b=ZLD9QIiZgIsYuIWUCj7j72SnfowDn5CvWj4S/fauVd/p8nUcedtNPvtygMsM8I5g
	lF/PYPIDFrwGgFB6LqvPN75uSlRwhGSG2biroYZv+jLyRK52b5sdwzHqfncRqPcCCUq
	Wuf+vB+c7UvyXhnr/2WklO871jL0Stv43j1vYTWk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658445412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rzVEOrmFnPmiDqoBjeCJVuDdMwQ7RZuuoyWcePoDSRY=;
	b=RM4n7f0ZYtN22+L3ZYmFmDFD8UerwyerpNlL1QgFVCQxjojtlhXolwyb7BtmUgk6
	ksYVHVK8Qm7vvRbrq3cCLJgiQj4NlRQeSzGucdzwcCgtmua3R9qpAuCVdbuxRWEpmgb
	hNWRAhvJsE4TrYXMJ5yXbjYsZhxYGhcrCKtbVgc8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182230cb7e4-32313d65-8457-40ab-91cb-1824c03c1d4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae162589f651a230e9a83d4039fe01b8b356914f66af226cef3341c0f8953cbc
Date: Thu, 21 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658445412
