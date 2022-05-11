Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2147F2F25
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 17:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652290139;
	h=To:Subject:From:Message-Id:Date;
	bh=yIe1i+Z0UvuoqeZKuOWvj2kmF1Sxd5H1mV4umZo1Uvk=;
	b=EGcJ+rOrI0pbtgr/Fq8jN6be3qFReIy4Ljt3jxetkK9xX1c1quGQbwd25zPiOck/
	8iVhHnSG1JXLGc3w9MLqS5+5h9rbGDP8vaqOGBKlqwr2d9bdC2UWV06nbnfq4fR4Qgq
	bQuQu8+GeaMM8lDrcd/OHXcNxvRKphUA3JQrNFKo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652290139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yIe1i+Z0UvuoqeZKuOWvj2kmF1Sxd5H1mV4umZo1Uvk=;
	b=dFnRV4GNst2pBKzBPvyCk/LOni29D8DhupuI7Pq/DlMzz0Ue2ht/ntpFQ6aBNRdF
	CMdb0VCE7U1W7bpAYO0oSa0dYvX3yNvbRLFpQxCtQfLmpYFyjiNa3ypmoA394vzq+TT
	gNu+cJk0ZI5qOTWH4CydXe3j3YRefQKrMerZYou8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b42ab4a1-b2621a90-6d2a-4db5-b507-0595a8a567a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f159fb7de9a7c76eb6a9c7ac1adc9e4a5903fb0f54bcbbf9477f1ff47ef0ebf9
Date: Wed, 11 May 2022 17:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652290139
