Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E5E97A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 17:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654794299;
	h=To:Subject:From:Message-Id:Date;
	bh=ZjktwXPZ1GdfaQOmO0E66j3mILnugIr9A774hM5mpuE=;
	b=ZzsZf77Y+3FDJrKqsbaRCWgJYvswBw2+rWeHyhvMWPHyxRH0h7xmaOfUsx1+WPEq
	QoVInXtnj193Z+Q7JNxGefXeGo9GayEKXM4AfHGKSPFm7wluG2gEiHZV4t18BCPqdGZ
	CcXLbI+Jlo7MianNB+i9lsv0h5yyKLxXjWuPg1rU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654794299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZjktwXPZ1GdfaQOmO0E66j3mILnugIr9A774hM5mpuE=;
	b=UDTgzZpT9PWv9ggdh523+mt28CgQcqqBU3tPWS6XfTUuBQovn91iCPXFdsM5ni31
	eaSQfRpe8ZFSpz5Zi592nMU+bJ70g7G5T575fk51FAGht4Z1o7ZD1ZjIB0KMECv/LBa
	S1QlYfrzTZ0fZ3jbNMsOH/mUP21QxHBWvQp0R6A0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181496d2757-43d170e9-b73d-41d9-9d42-0717c8a2f582-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb2a48ab40947e93280c8c4f4c48cfcc5c2e1f8bb52dfd4ad6e128a8f09fb1e7
Date: Thu, 9 Jun 2022 17:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654794299
