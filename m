Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F4F4698
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 03:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652067958;
	h=To:Subject:From:Message-Id:Date;
	bh=mtsiR5XcOMfWE+lOrmIahpwpHyXbQKbDxvtE8dMfONo=;
	b=C9i2DgZgDSLTrlwyYHkbbTI+9Dm+myPhZcA0dfTqsh6IY0pX/6TLRvppVzO7tWhn
	F4+t2PAAs46NZkH78yFNi25qAh0qJ7ht2iWEQbv9QFrATK2wiYDU3/JqpYZyDzuIo/g
	lM7DvSJk3mUgKJneQ7nEXVKTCV7lnkHXM8uMTIpw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652067958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mtsiR5XcOMfWE+lOrmIahpwpHyXbQKbDxvtE8dMfONo=;
	b=DlM0QYG8XJ1N/DD/OFxq5qzqPp6LZcuY/HCw4HW0OPptNw5riiBh6NBPhqvns74Q
	Z+neJnWBiZjGDNySmp4R85eyw/SCbtoiarPKSxhZt9u23Z3msPQEjMAXbo+A//BCZAY
	rs5yJxYTf/IdqsCVVAv8ZjWc/Jba8KyKmV9HmRB8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a6ec7e36-28260ba4-649f-4881-ab86-b8c0f89ff60a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc28fe81369da7099c2f1311aed123481579db6171882a9e4c2eda45d9f7b0fb
Date: Mon, 9 May 2022 03:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652067958
