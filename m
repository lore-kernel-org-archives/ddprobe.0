Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274427A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 23:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658012812;
	h=To:Subject:From:Message-Id:Date;
	bh=836pHnlDpwyZCTqggwdvQjGTkd11y4/gxOT/8gMVCos=;
	b=gYt7s3KGfpFosls7lm/0AtaRUAHbEClf77bPrWrfJhU9Ycrohhp517+3ato3qpid
	Z+Ro27JmEuucBHeLXukM6WjWVKAdMB9gIQ7tqX301pH62SlpH4OPoAdbX906y+zeUwp
	zbhmwDfoFnetldWKIzHxpNRCzsqTzdybHqHXw1gw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658012812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=836pHnlDpwyZCTqggwdvQjGTkd11y4/gxOT/8gMVCos=;
	b=TRwRkXsMqX5hLHTKsY4YNUaSkPqfHAKVqX3Jm4aq225p4yusy4gc9OfsfDQgIUdf
	IzksNaYUtvObr+z14JibCQCVnXz8cKGmyeOX53xQjhEtN/vogUMCW6++JGivpFf2E09
	5O/7Fnxw0wM+npp91k5hg1Te7K18ZEyj0k1dZ1VI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820943c41e-273ef292-2360-4662-ac64-7776febf2f8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 776a0e3c2f649afe2be48a6eed6ee288577ae908e681abcdaa608c54dc598d01
Date: Sat, 16 Jul 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658012812
