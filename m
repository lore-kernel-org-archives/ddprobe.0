Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D8710F1
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 03:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655869319;
	h=To:Subject:From:Message-Id:Date;
	bh=P/vsV8ZQhnXH3frJBKTWkgN3zGovobbW+HHUAjui97Q=;
	b=dZ84JQOZLby9CPVNemJHe1nvh0ldNz4Y2tB5Cm3aPVx0KkQPqyv/rgCNhXjR5Wlg
	xzYSma5rGsVs6/ABEQCM7gSuXO2/txf8ikDnfhCekfxM+Z+cqgfxoHpLIz677umUjqB
	7JfknlrJdC5UJdWDLkAJEKPlTzIc7K0z6xLyE1Nk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655869319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P/vsV8ZQhnXH3frJBKTWkgN3zGovobbW+HHUAjui97Q=;
	b=GqrxLaDmFqjhOy252+GSiXe1Hc5DHCen+B79P3bxFTR6j47U4bLBYBEmQ44YxAt1
	JxrmMIDJCUcQ63tzBpiTC5QXHiWnXqhPMrOwvRpuyTTlDVU2nwtiifU6NmNqPlq8ipq
	Okf3TOCoUuXzeDVHZ5V88QXK3kcjn1Vg3XW3NTM0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818980a84f-1fb6b90c-7e32-4078-adbb-01a4170245c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b7d2d19c6726868d34dd9ccad1a32e041342ed375d292d510bd782c75645c25
Date: Wed, 22 Jun 2022 03:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655869319
