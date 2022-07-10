Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5301610EC
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 03:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657423013;
	h=To:Subject:From:Message-Id:Date;
	bh=Izf7zCAN/E+78olTTuHzuMYXG3TUCmPCSmxr7cxe1JA=;
	b=FFa70edcEU4GOaf9voDHZQY7EY+gc4ZAKNkU7h1AaRBpyNyDHL9ulJg0UFDNbpJS
	1Ydhk+oSIuLvBVfOAOgldOtoSY3CV5DYiY8tXTTfcMrObRgOjIMLMyX4tCDPyNF/fi8
	zj1dnxD9rtILahhN19stF7hpHQMku85bVik/5tSc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657423013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Izf7zCAN/E+78olTTuHzuMYXG3TUCmPCSmxr7cxe1JA=;
	b=ar3F1jiiYmJd8bDS2uzlGu+6oHLZzWtvfsYqBAdJw5Jv5rF43ZJ0J3HE+1rOAtBK
	5rjQDCUs/07zy75IQeDwBx7GwhixWJB6hI1SB4r0TwrWprvaunPosVcpML0SRGQx1nt
	NUgRO/hmeWSCNr+Vv+KHM6PX1X8Mpga9zyqkTSQE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e61c21dd-60d890ab-5f4e-4e19-8a8c-79f92bcec687-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9101d4d76aefb9ccbfaeda30ff7b78ecd8ffd09fbaa9ef7973f2ec91e0f0b77c
Date: Sun, 10 Jul 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657423012
