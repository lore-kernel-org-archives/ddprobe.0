Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A3A46A9
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 07:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648194118;
	h=To:Subject:From:Message-Id:Date;
	bh=8aFQ3Mx9lgBVb0itnn1W4Fp+q37J6mFnFkgDtDlEzdY=;
	b=E9Q9R7d2QQZa2AYCT7565Oq4TJ2Khw8JZMqZms5e4C38NKRGdxIE2IcUkC4fAUeH
	O/ShDas9fN3six2lztCXAJF2EZJmqu7PqtJhqIffiPNH0a1D4wEIZJL7xjvVf9Hjcvn
	bWFZhbAkglo6Mh7F3iulbNI5D8AlaI3C15BRtaMk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648194118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8aFQ3Mx9lgBVb0itnn1W4Fp+q37J6mFnFkgDtDlEzdY=;
	b=JtE3G/fACV3JHz/FNcZHU0HZx5X2Ua7jvzbBSxeXRhLbbKSbJUFOKiMOClktPqBj
	suEUxdDMA+h7BY/bttgBVmzS/y+8J0XoinsqE/b2e8S0cV5/FIcVwlDjeUeO2tJW4u0
	Ym6tpUGC1yzomRd/w5FI/uU+g/aO4JQqtA3+rhbY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc00662a5-14cf7fce-df94-4313-b8a5-5f06b316dfb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27d7f4f6b5cd660c5dbf7e2bd74c28de71f81ceb361302283577369420442733
Date: Fri, 25 Mar 2022 07:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648194118
