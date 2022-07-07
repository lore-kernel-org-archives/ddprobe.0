Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05065625
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 09:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657186012;
	h=To:Subject:From:Message-Id:Date;
	bh=r4gJogtB9i6iXkniSFoH3BQu5of33jo7mdC5Q/wUiMw=;
	b=dyCl17i2VvAp37+ivgAglSjZrglqocY3GZCxottdcPoOcA3RXKGTCsHp5xCDazJS
	qL4qJB3+VKvhl+6QPdcDZ1t7Z2JUP56fMtaQ0iUnTHS+k74AZ0DvbBnvCnczMs3EGHz
	5Wx53ei9um3a4Hq9IFHCLJGYuVjtrsRcWvvBExrg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657186012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r4gJogtB9i6iXkniSFoH3BQu5of33jo7mdC5Q/wUiMw=;
	b=A+6wEGvU4yQd7fSDUyD9rjbQdzxNPixR/doa8i0RAKP3easE13mLzNhXZePZFpc0
	Cu3gjD55tZ0lj6SRjlzc7LJCOqjh5xmzDJHslgnFqzwDQO51NqmcwGRd+z46h5L0PJA
	KhAm88/1gpqX5VhkxJutbIWdbvZ0iKrTo25QoEws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d7fbcc84-bb1bd9e5-56c3-47df-a12f-04c7abb737eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c1227d27066e5d709742ecea516ebe592edb1f4ba43eec10bad3c8c55c4e473
Date: Thu, 7 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657186012
