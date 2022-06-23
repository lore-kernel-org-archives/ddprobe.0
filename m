Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299CD23C4
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 19:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656012412;
	h=To:Subject:From:Message-Id:Date;
	bh=hA2JXdZu7tixo8w8pko4wOAcMgz7amjEalzlNJ+RezQ=;
	b=NAQMVL6K6B2smU20PJjThdnPABI8BpFePa+16qBZYAohLTfZGq9IShwyEHN7uD9w
	IS7zAg2cEKgwauseIACavwYgKBBCCGuAQ371hzLSbCIByerDeu0dsFnXmAE+LeGv9Bu
	QHQhYOu9eJKzIeQSUAv42Pt0rFOs9odPZr2zgyAg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656012412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hA2JXdZu7tixo8w8pko4wOAcMgz7amjEalzlNJ+RezQ=;
	b=V2poMY2r2re+7TIjYqTaU89lZOk1wnvaR1cHSII3quTkwoyeCZZZtNbwqWI81+k9
	xp6yKq5qM8vTxq1Su7JpX5fBB4vlnUttRdKgA39XWlLGOpQSS8XANlwqP7V8TA0PGR7
	YdO/4kWo9ljn3pFyseySOVaXXVQBV+09rBGYgOIQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181920815a1-7f635b6d-5675-45d2-9779-58542b8063d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb62059a03714bd0b73830b1e6b3a3646c81884009c4d013902d2dd81932ea58
Date: Thu, 23 Jun 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656012412
