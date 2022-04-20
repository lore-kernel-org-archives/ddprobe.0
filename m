Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5FAA1373
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 11:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650453658;
	h=To:Subject:From:Message-Id:Date;
	bh=QTEeCOb7zFtC2B7twQFLq8z4Q2SVccdf+s9fyS5zSg8=;
	b=J2ENt1OVAfqSaHVRq3spPIXUUongNPcQ9KYYaefTcXI0yjgxOF9iwB+YNMKp2T/y
	P23IDd4xvk6AEA9s8NzphdXaXckVdsz1os4u+mAqgwmg9V0Pcj95Hj/5g+crSXs1+hn
	/2zUWbJBzM5micb8eNWLtmmpCWmMXIfG19Re24xE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650453658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QTEeCOb7zFtC2B7twQFLq8z4Q2SVccdf+s9fyS5zSg8=;
	b=DCKvxQ7uUiSUXPYiWGoHi+os2YeGNi3cRXB5Mm4ROEYXDj7po8MiaZtYpton0QtO
	nH+MaSMHYjL/3U5uLaEBqIy6Dt5T38DgaHvZ+BTx552BDGIusXShEKzJSE4S9UrrHpZ
	kQiQa80ReazRKlGmh2oPidsjNgqljV1Be3+EzF5s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018046b43a7c-15594f2a-a79a-42f6-9951-3f27bfd5e94c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26f91531b43d7476951c5409bffcae2576b6787c1598e6eb86aac982c4f6dd7d
Date: Wed, 20 Apr 2022 11:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650453658
