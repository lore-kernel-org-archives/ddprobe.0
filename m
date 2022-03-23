Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77CF41B72
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648049184;
	h=To:Subject:From:Message-Id:Date;
	bh=54hAZdAt8l4p1lYUrFvt6j2hAPFSR1OTmT7d6mZ5pRY=;
	b=BnKd1wUp8hzypzrBdm3H4+PKr/WIcj4Pvl1Wy1FhjFi4HDTNPG4eIsULJ75NzHTL
	zRoRMr83481w1eM2rOnV1Lx2WNbtqzsTzJdC0SQbwtmRokVZlyub/o1XCnevPH9ZPZT
	lUxSnAkSNrRZZiMzDPQd71pY2ciaQk9iZnXN6kd8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648049184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=54hAZdAt8l4p1lYUrFvt6j2hAPFSR1OTmT7d6mZ5pRY=;
	b=HwI6mW4RD5scazFdt/ue0T5wnUHJyHHZPkUAJi8BzXalUHFaV4JQo2mw0EfIYNPc
	w5GFwB63L7HI7lyTDz9Z2Z+mMSPfKCiq1nJ4PRAOEf0ZyAAl8moRF1xRVlAEYX5ZZns
	EgmpNrjQLO/seNJ2X8XkWmbAF6ZyDw3+4dMtAto8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb762dff4-3433894b-d231-4110-94f2-2f004f41b472-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d207e5186e9c43a3675cb14782cff791ae0602001adcdebfda4a7fd8c4c4a1d
Date: Wed, 23 Mar 2022 15:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648049184
