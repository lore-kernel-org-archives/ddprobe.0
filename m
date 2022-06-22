Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DEA7EA9
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 02:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655865059;
	h=To:Subject:From:Message-Id:Date;
	bh=ehWhTBe6VG9SUb9TssFHe340Ph5HJVJkfhju/X3+j/c=;
	b=NtGxqM8eCYYmAC33IzeeaWaFfAaZRZ5RQ/0fVN6YmSOavXnC34jg5k2YQ9iRdbRB
	DBkp+fC1ChDMJ9ORXRq+bAzfYjiJwhpKo5cF6Dqp5uD2a+4Qtmwa9S8k1wJDkw51SVc
	n4dddveA5R++7boNP4p2QqzUfDC8a+iJE7PEV9Bk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655865059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ehWhTBe6VG9SUb9TssFHe340Ph5HJVJkfhju/X3+j/c=;
	b=kolxsDeqZXkiy4CWnjqeSn6kUCZiZXhN7i9AwNtBVuNt4wCuOIyr5wWFickKh7+P
	+OvmorEIdCG2CPX7X7JgRU2/uQ6rZsl77PuDSmk/ee9PSMQArUcprFJ/m+Q3II1K5ZD
	Csd8E5DkIf8DRj8UUH4ViKhm0KoSai9wT9RfOk7Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181893fa818-2c429729-37c8-401e-80ab-4f152017354d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 406c615c9a5821da92a22818f08a5f49f521854a3e078f5af5f08b63d13f5b0e
Date: Wed, 22 Jun 2022 02:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655865059
