Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E29A7E
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 16:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652892419;
	h=To:Subject:From:Message-Id:Date;
	bh=1EK59oALRs6mgaGNnXrkrZOr86zCDQDkIZQaT0Xi9E8=;
	b=fPVdWKxaCjknDX0OQyMhUp8mNeJxeMSCggJs5pLnxRehmQLgweuUCbc2+buCKHg4
	jzMOju/gzqdq1tbmNVQXB1DfaONFrmM2lV6WDs00VpNBzEK72gEnDt6rb7Hv+SUVKJO
	5/k5gpEyEalD6i4crmOj2iSlXHO/0M33mMspij6M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652892419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1EK59oALRs6mgaGNnXrkrZOr86zCDQDkIZQaT0Xi9E8=;
	b=D2mnzZUvjq9lbz0yUWJxS6nBDFM4KnV3ZsAdUogCcsa4QDivPp6eHPAwbGR4/bh4
	sSacjpdHQLBWkWVcV9ydgpEjZLTNvziKefBnecqAcVgveIjQYNRXMFqXIrBAkvE32qr
	0i2j5bA+YkPVMk2FGeqFDkzcQxrtduyJc9CkpkIg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d810c4e0-ed632ebe-4dfc-4d1a-bb8e-c6ef5015f896-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9093ab4bda49f921fe1c020231aeb3752bb0648f229bbc8a8a041e6a7961ebd
Date: Wed, 18 May 2022 16:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652892419
