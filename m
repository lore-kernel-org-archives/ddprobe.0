Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8B27E7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 16:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655742959;
	h=To:Subject:From:Message-Id:Date;
	bh=1mqamWJ0rylZb/jCsbYCNLh4hfNSr9sgEkKjDdZL7u8=;
	b=KFcZPy+3lJiEjyslx10Bg1ggqmjKv+weK7JU03XsZYieLxFiQo92/CdEAqpVhNCC
	f7zFxEhYEHhf2WoArxqUHK+hGBf2upMRr534rc3PuP/51BYIt6b9sShuAeojFbq6VES
	vMoJsqYIL0BUFOu9/1wjN/1+eEfywZpzW8M7CzwQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655742959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1mqamWJ0rylZb/jCsbYCNLh4hfNSr9sgEkKjDdZL7u8=;
	b=OgqAYScSbY/PCIz1C66gbH9HXRH2zkFUUAm94E+GM/vdHHLzNNyGuloAWEQyb94o
	YRfD2Vx74z3TZ85jouTmlHHync0e9jwzE1tN9Jfwl1qvYq6HqTU2jnkQo5/7DHBEAHi
	P/xWkhp3QBxjSnSO3qvFC0ZgQU8UeV/iEuX+5Hhk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018181f88e87-bc32f73e-6981-432d-8008-67678ae893de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dca341a59569cd551d53c02c5db0e9585d8580f9d889a26bb463a84d5db5494a
Date: Mon, 20 Jun 2022 16:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655742959
