Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6516F2F2B
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659736252;
	h=To:Subject:From:Message-Id:Date;
	bh=4Wwq+YQJ+Tx1//Jgrfji4LKuWNj4Dm3ibZ+52b3vrI0=;
	b=R6R5+Wn1YMmBR9LBC1KBk6BfrDRRo/ttA2CR1c0FqtuU45LX1b4aEwgsjUEQBGCC
	+lG0A5qEX+Up7Mc3VJkdNKcfYEvdCZZ+lWXhHKLWB2exlV+I5EU+Hoz4lEnmVeJRM1P
	mHIwEqIEpO/gNBuXFR3F26OUD5/z4p6SU7t/EzCs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659736252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Wwq+YQJ+Tx1//Jgrfji4LKuWNj4Dm3ibZ+52b3vrI0=;
	b=YvBdm2cYpVZGX7VmETIv9Fpy8ZP3Z43t1uLbT8LPdXbqDSFs/hwBfaxmL69Ozau2
	XSlzd3qpcRkYLkEB2KJ+xk+5j2AMXtpQYUPw8vlnRXz5ejdQ+1OCE81icvFR1P2WG4Y
	qiWkowjmmFbA6rGkjT3hAE2uAccHaGxYTwn15mzw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826ffd60e7-b3c95150-c48a-4cf7-86a7-a4626ae0333d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5835e69cc5037abc6f8ac369fcdc047c3e942e8cc1a335331a7682ec61a4773
Date: Fri, 5 Aug 2022 21:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659736252
