Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462386D19
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 21:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656626212;
	h=To:Subject:From:Message-Id:Date;
	bh=BGnBvMK9k6b+7cxJHfa2aVWOi103fiavFhN46hpXwFU=;
	b=aRdWxY2yVOTlbB5RhEvliwl3WUirFCeUwaTDrsGqRv+CenDlXqKYoUZrh2GYJAc5
	FZab4Vq6145hWxQQEhaH9bjIVOjRTLxSNEhWzjrrdHYcuMQyEkDNbCXlj9uDG2C1CS9
	R4CrGw4ug6+WPJ/45KtDq4Rrwp7oBT52YowJatIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656626212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BGnBvMK9k6b+7cxJHfa2aVWOi103fiavFhN46hpXwFU=;
	b=QOa0MY5PAnEL/WMsmO9ikisuYhnZ8HeRMjrj2YSOxtZ0cQM7J3Hl2X5wm/y1V5PU
	jj+HR8Zn8YiN/Fxh7EdKJSgni1oNk1HbG3K5gbcMSuX+1yHtVmE7VeXyyS3vw2peuoq
	GaD/gN5eN5O8Tl1cGqzfAdJffvW0sSSB5a3eIWIc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b69dedd7-9715d1da-3957-4f02-8ba4-0b30b892b55e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99c98c3967f31cda8d8d797dde18f7f9b35d54b66bee663f4061553668a8e5f7
Date: Thu, 30 Jun 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656626212
