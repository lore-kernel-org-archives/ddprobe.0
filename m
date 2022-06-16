Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098E06AA6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 22:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655419559;
	h=To:Subject:From:Message-Id:Date;
	bh=YAN5PRQfRD1/pGsbzLSUi/iCtHzRdZQ8BvCR/AhKWlo=;
	b=kabBV4432mdHk8a65pDcOzmOfJX23zT9WhoNsiYWJqPBEUGSef95uDDDnso8o+6x
	C/GuiAaaHiRx1OR8iOXRrTzc9Za5hno9Fw2TMeSWFpsf7Wu0AgWaZdqhx4EcokCgMb7
	O7m2zAD+hDPoVVSYxwZAmiruWeVFCRHniiIu1I/g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655419559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YAN5PRQfRD1/pGsbzLSUi/iCtHzRdZQ8BvCR/AhKWlo=;
	b=Fuu5aLpK+L5aOWNqBg9LqJpqDSLMthh4uJifjDF5xdd16n3qazrDY2hIyHk0qWWO
	VZK/wBINsz2e3UY/a/FypFkWVbOxJu32gOhztzeV0hpciVw0CXF3nurRFArKhXaKE6I
	xWbITnZ73VVc6MC9zbXQnf/OOvrciE4XuFfcp/yc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816eb1dd33-8f3939a2-0f3c-45a6-87d6-d2dac2b147c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ffb5584b352472bb8e5260abe825a8307ba1e559b0e477c18db7daa5a4c3e9d
Date: Thu, 16 Jun 2022 22:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655419559
