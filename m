Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4671C36
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 18:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656701212;
	h=To:Subject:From:Message-Id:Date;
	bh=MeZ9b/64Gp2vu5uBpuBfDZ/fY6XgDVpzLauXe4iRcxk=;
	b=YlBwfF1ekB8Vxv6W1LGV1nxWrDn9oXTTr54Hm/ZgYo102OEu+Dpf2DxgiyzoC9tt
	lgNQODfqyuK29cejPuTWAVL6hbKoT0EkhaAqpd+DwoZ6nrADfJ/Xotp8BON2CO6jh0K
	+UWeWtuWXD1Ntqz1qO7Xioy07Z2grjDJ90jdx1TQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656701212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MeZ9b/64Gp2vu5uBpuBfDZ/fY6XgDVpzLauXe4iRcxk=;
	b=BqVOeiVB9BK5CJYac6BW8YiuribiR/xt8nRw5o9r+uya0V8CPI1+onazT+lTkVAs
	rpTSwNmNziZzUvVq3gGcG0TeD+/pYmkwwPfAyiCc25GDVbsmokNgaEDTjeC+oz8JiUH
	CaGY8CEoB3rEBP7+1K/FMd3o56fcPDgcWyCcxX7c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bb165691-e7fc96ed-0b55-47af-90ba-8b63b5207035-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 661fb3031e9b2af07ad6acbd306a53398070278dc4ed9bc8e6c986740aa1747d
Date: Fri, 1 Jul 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656701212
