Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3943C7A
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 20:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652817779;
	h=To:Subject:From:Message-Id:Date;
	bh=1Tby4xs9t6Tud8mz1KR4pOReQQr2IT/fIC16pEyEmRI=;
	b=dliZH37LDvYJXbiEWwZ/tRJtLdQj+hipsJVAdW24j1MT7BXL5AO3SbnsImZRlVXl
	/pHSjh8XCSyeRTbQtl/NcsPyI4DBw6VwT2IBg8qIBs0iv0+BiwBwDjwIGUxtNvcJgB9
	Hw1xL87Zsg6qK4bSS8BohY+j3vSJbQetj9MJKHGM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652817779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1Tby4xs9t6Tud8mz1KR4pOReQQr2IT/fIC16pEyEmRI=;
	b=EhsDM/znHc7Tm5omxLVP5vnGNQRZ9miw6t+MdkidHJ54pbcmSTtagTnAOomDLHnQ
	uvNRF+ee8JgPNijZSoe7NtQloairJpKVVYf8EbQnZ1n1UXJN/Vpeb5rEOsptSn5Jp3Z
	+Ra3LLpM76LaTuu/L0aecgUu1neXZG7BLE4XLHH8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d39ddaa6-e14c9520-dd4e-4d10-be02-155f5f89dea8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8f8f4769f47083f032c870a1b96ce7d08ce514e4e2a5ad2067da98602aa1d28
Date: Tue, 17 May 2022 20:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652817779
