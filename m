Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701A62F5B
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661101852;
	h=To:Subject:From:Message-Id:Date;
	bh=Q72elQ8BvXkbwY/JWcXgard6l2HumUWkLojXsPKRoxg=;
	b=HO57bQ9h7+9sg3ST//YlgxQuDsLnmmys0Yb7loACWbrj2SYyHQ+hlTJ4qxHun7fb
	syEcAcaJo23dKWxUAyf7/Aao6sdOrlvh3PwMhYihYEx/CC6FSkplktqO6ZLfOQXrlQb
	HDdK61DG+dcZ2S97OMeZeY3y80StthByjoM9CaRg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661101852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q72elQ8BvXkbwY/JWcXgard6l2HumUWkLojXsPKRoxg=;
	b=Qrf15cqF0mrCZlDPQ4rssNQ3yopTYG3u0HR1AcZcPcXcHUj2aYrfbzyHRtCMy8l9
	h0agL8bU7jaYNVvsRWls0duWZxLte7VCstEFZY0Y0YppFZxqZaHb3rVAiDP1nV1Dh5L
	1DdcXzIY2SCVTDBK4Ww6paHi48VtayWVRsRDFNtA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c162c7e8-7c03bc8e-0e3a-4b16-b0d5-25c80030b6c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3e8941d37845e94d36748feb8835d5986d6eb85d35b7986e7bc59185f228111
Date: Sun, 21 Aug 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661101852
