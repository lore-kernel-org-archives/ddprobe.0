Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0508F2F42
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 21:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652218079;
	h=To:Subject:From:Message-Id:Date;
	bh=ExVu3pf7HUu+gxaZ970ahrzHFjR59JgJK/oxFNPpFMM=;
	b=fVpRhV/l7CDYp7nrr/U7mcKUbVJaPQmSoRTIMhzAq77IUVpR5ZbO00FfjBZ8VUu1
	txD/0cyhb3eqjP9tCP918U+ZpCG1WYbc7VKQiyBOAlRz3YnqE3+CLf9rVyae9BX0YOS
	+RWsLK3kPZwJ6OMQGIQAv58Y+wu5VxBsxVsXmiDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652218079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ExVu3pf7HUu+gxaZ970ahrzHFjR59JgJK/oxFNPpFMM=;
	b=QgcdZh9F2WAp6VfBcOBZC4/yFZZZ5STv7kkPAxBVV2NPAnS1aT0T1OzpfLC2X4JG
	yyMxwDnZgZlrKsf18/9Ra0tOmeByoeKPA596pmoSuu80mvNoe7HSKEzfZc0ajqZptyQ
	K8NrOLZnioc0rgjyb/LUQJnpUNq5saMKeYTs6+ic=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180afdf283f-65ad2361-e85d-4353-93a7-d1df5661fcda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22b6106bb2324b88bb553e1fdfda67a406d787d4f3ab9e751784c1bce19783dc
Date: Tue, 10 May 2022 21:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652218079
