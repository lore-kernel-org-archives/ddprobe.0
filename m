Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA93E2567
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 22:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655245439;
	h=To:Subject:From:Message-Id:Date;
	bh=bptm/5Z7XC5LfRvfHwMM9h7wY/FT9Wy7VsHkyVJLkvk=;
	b=e6hYrMHsePSJnJ1AawDD9fjvf5CcKIvF6u9pqchWT14MWBg48TQIf3RidiMYule8
	7wfxUeO1kjgyBk5+p31fQYuS8nRDVLZ7WBjSVxOOL+DOBZq9GpTRDcw3Z2VSBgB65G0
	9LdtRfqIvXAyiEfwKR1YPDp+KbPe7S/PzgS/v4rg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655245439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bptm/5Z7XC5LfRvfHwMM9h7wY/FT9Wy7VsHkyVJLkvk=;
	b=caVbYm5eQy1m59VlpNmhsl2KojdFmlFGyM2JEpMt2oxIQzVQAcjiW5tIvkHthBwk
	cw0iKQAf40Lf81qtGAQIrR12KWYU1AO/Yn0zWJwDhOdjCpAXIs12LAi7gYntkii/vJN
	1ya6fgAbBnxbmFgMEJOtpdMUrEP3v9GZ901jwEpQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018164510122-df63f7ac-b875-48da-aef0-bda8ad29e67d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 776f55a4621b87a5d6031e90dc3e0f70589653d6020f7367a820c82014080967
Date: Tue, 14 Jun 2022 22:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655245439
