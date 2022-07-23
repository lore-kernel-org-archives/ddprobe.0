Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152C37E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 11:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658574412;
	h=To:Subject:From:Message-Id:Date;
	bh=3NjiNfq7uTN3wIKh4boBAX8rsAcUhCXHqTCOW7dbiqk=;
	b=NpmhYYosVadR1D70eAJuWBYZqmYNZLPRsjoLZlzs1glk+V3qYpunX+sXfiI18Y4J
	sw1dbWr8ggMgEg8cpS82LbpwDp9z/Ge/kpWTW6pVvK9BIhuPkTg8EAE/K8YfU4TKAKK
	Tv9T42noahjB/urcTNdjb9CAJPIudNIpvrnuiDG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658574412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3NjiNfq7uTN3wIKh4boBAX8rsAcUhCXHqTCOW7dbiqk=;
	b=GZOCR1tI1U3WO1XkCMwLyPNWOjblW26QKo/BhNggXQhr8Ge3k658Qhc5ZpJjxokc
	Uw5DMdO4RskK+fVlAyHklANmXT5N1M7yW45IbdjzB0SDDyozhV6PN12Ngok0eoiZxSW
	CQ/iuuA3PJpHTc+dROjZ1ePpkqr6NcTBmi9Wr0lA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822abd19ec-99bc6a84-13e4-41a0-9a1c-32d44c0c5636-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2012deb1bf4793dd04f9ab3c4e5dae7c6caa97a750734b9e524314ec6a17ce99
Date: Sat, 23 Jul 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658574412
