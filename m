Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2487D7B
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 04:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651121458;
	h=To:Subject:From:Message-Id:Date;
	bh=o/nC9zuU440t1TFqr+vjS4gbZOnlgEyC/kjde5r+nqI=;
	b=DZW6s7Fz/UDcUZvmyo1YMPr8Bps6lI7SlIsaNp3MvXO7blj5Fi1i+Iay28dAtkNX
	9tvvzfMACFTTCQeI0gJUK3LYs5dNtqsnjCffaCOGBypZVC5hzKYA7Qy5+ow9afMVx6C
	6YIgMBhKpd+c6f7qlYpVdAt8+1GJB9J9CPvqfLK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651121458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o/nC9zuU440t1TFqr+vjS4gbZOnlgEyC/kjde5r+nqI=;
	b=Nnd88rWR6tIWqfcey11khaxRhu4vd4YQWs0cLFn20zlH6qjgX2JP+icLAD7Cve/e
	Ay4wZz97Q5BoFhcBOQ42xYjw+t5hm3b9qkI3smSzNJd2v3wV/GCDCibPGc9Qj3q14ez
	C1k42Pb76aoMLL9BWTAT0RfCH7g7Gf79mH31b06I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806e820c51-528d8f56-6a5c-4f91-b686-b3b71d74734b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0c081ff9e1ea604d1d4b4c1a7b69793fd894eeb1eea9ad6408e887e39932e15
Date: Thu, 28 Apr 2022 04:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651121458
