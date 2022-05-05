Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4D9632
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 13:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651756558;
	h=To:Subject:From:Message-Id:Date;
	bh=p0z1N58cVqe5pKV1pXKvdfxaZlc28afq8ejUKhCbG/g=;
	b=fanB1e3cxBOppITjvx5YcD4F0/c5/ZwOJBagU9K0HWyHxtOTZ+GBAXpu+LYKH52L
	VHfZfLd2fgatRMr9kLafPVuu/jmHILX01ivCeGnhfTpn12RtonsuJ4CD/CKncbMitAP
	IBxP0J08jZOsCpO6cGYS6uTAkh99F2wmZnEpGjQQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651756558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p0z1N58cVqe5pKV1pXKvdfxaZlc28afq8ejUKhCbG/g=;
	b=MymnCJqLBN3EbjAwKcNiFex72x+6sH1fsvb4m9Wb+zXu7OSOqaeiegORzXFbg7mR
	mWyoNQmOHz6HEc7wbupDEuOP5uqBcd2Rk/p9MqSMqQZk1yqoH+lpvMq7eA1lXezVwq6
	BG9Ag9qqi+bI7P+UdYpV1wmwJUOYNDWH6s+VLbZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180945ce80c-165d6d8d-75b6-4d7d-8acc-5194b1851647-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b97606253092ffc20f6b6ac24a47e6cad9178d5f2390affdf51a668a271e9c4
Date: Thu, 5 May 2022 13:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651756558
