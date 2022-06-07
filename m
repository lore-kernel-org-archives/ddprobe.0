Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4E37C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 20:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654632479;
	h=To:Subject:From:Message-Id:Date;
	bh=rylHH7WWuT8xe9NfxGPKxdFHkUqpw9t9aOL9lWdw6/4=;
	b=KS23GnbJuTiwwwlwPpBG/7RoKV3GIz81q/XlN58qfkubP427Vb0uOq4rcUUmGy/y
	hUpEzBn/+kB9NeZ+y0fLibLgS07ZDjOEm4aFEmzYhC4iwwKNN2zI6qoLY17VkP/hy2m
	TUcWGhmS/cMmgAL7I0C9Av7jgd1sTJ8e9k9Vt5CE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654632479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rylHH7WWuT8xe9NfxGPKxdFHkUqpw9t9aOL9lWdw6/4=;
	b=WfD2i3PdRL71s/UXI0GgjQE5Qj6XIIkSysVrCLU9fiCHTuNt1F9DPuYpBxaF9osb
	YzBirQQn1N/uuVyhyVHG2XRXWhDna1cq8imbeSyCfR+qbI7HszywQjLbfMJyUuQ7rFh
	kyWr1OzaaSS+aPRUbYo+/tFDBcvJjHbvxOg2o1j8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813fc7fa20-bc7bcf3d-b1e2-416a-8f7f-334ba8a6a8c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06f895755923cf7dc4b3958613c560ee7f88f1ac2f7aca1239f81921f41bf476
Date: Tue, 7 Jun 2022 20:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654632479
