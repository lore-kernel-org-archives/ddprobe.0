Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EA4259B
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658154412;
	h=To:Subject:From:Message-Id:Date;
	bh=zc6N8ZJ9sw/PPUIl3VBjpV1zMKoRdYZPl8/bbvjMknk=;
	b=ge022L2pc2Rxe2MqoS/7p1yAaszGJit8g/3KZkQVuEUwonVdvtxx7bebp1TP0OgJ
	mO97SEMWal+RrjbrIAp5FILHrsqlviN63Pc8fk2Y63nQR00F1jMbokuhrb+3OMXOT/1
	5lLhugSxDSzYH8COj7lBD2ZPE0+uoq+JJlMKTI1A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658154412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zc6N8ZJ9sw/PPUIl3VBjpV1zMKoRdYZPl8/bbvjMknk=;
	b=CXYDgNiE99IU8muKhb9RpDF8/S4KkjpsixWWl6U/tMIlvIv192rAsRwnWj4Rfp7s
	JKFD1yVc9d/4jE0VOUE2upHJZVXwIwXQAvzOg4cOqO89gcGeJsiDnrQs2cQmQmrAOux
	LDwL+IukvPrlP7nAePhYCXkJULLFL2GSpqcrenOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018211b46943-a02212b5-5a48-42a6-8c7a-565ad3746c0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48a90868da0ed5f3fc545ef9cb34d0a40809c9d3f3c6da47312ebbfb47da527c
Date: Mon, 18 Jul 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658154412
