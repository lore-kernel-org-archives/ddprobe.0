Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D2A631
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660314653;
	h=To:Subject:From:Message-Id:Date;
	bh=7E2zbvO1S7dsznrDyOwrOUdlf7B1vyCUxHtr2csatdQ=;
	b=H5rF3v7w/OsUvhc7+az42nlBrXhEaNEqyjRWor5mlElX+OHiQaEJzYmvkrgH101t
	0GggtrFmVez8cmJCWXY7+MWtvlLrAAIi3SIlbRRsGLlWBKflL1csanesmL6PJcHnJ2b
	hMTVSRhTDk+PrRsV7iPq7ZWeHtNu9ef93zrDKems=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660314653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7E2zbvO1S7dsznrDyOwrOUdlf7B1vyCUxHtr2csatdQ=;
	b=GTb17ydC1eWsVNaRAeK/PBaPhom6XS9+Qu2SYzaRB37ZwmMqhQ+tHL7CARKr8RVU
	zZpKd1F7UF7t43S6k7JAS56jlIaTjv9Q/CfEjh2H5mmiL2Tmj5rjfPD7oxp1Pcl4lN7
	4zr+9Zvud+9wCZH3Z7hj39Ol+aWnprANw79D3dnw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018292770fe8-ad557eda-7f8b-42bb-b7c7-2ade2625b1a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c304a2b546e0fd55ca942f7d06e1e8940daba6c44a1cf1f032f526a4b7d41eb
Date: Fri, 12 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660314652
