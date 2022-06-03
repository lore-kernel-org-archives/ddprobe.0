Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D8C7FE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 06:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654238459;
	h=To:Subject:From:Message-Id:Date;
	bh=xXz/SyOCm7p2GWAN2ey4Y4puRrkkW1bqKyVuEmITEw8=;
	b=CsluI+56K5rU4MgK/m4ECmqPBTBs3Wh8Ge/lN+9XeHlp0kxV+GlAcezLXKAV0tMB
	0fdOnKkPMg4d95mJxi0iZU/JuQNnBU2k4L184yLnGzZXIrNeZXj09KUGGjlfay4NJUH
	Rk+Vw94i0xbywykW6kQEyOmzFMAezcht/b+4hG8s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654238459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xXz/SyOCm7p2GWAN2ey4Y4puRrkkW1bqKyVuEmITEw8=;
	b=IVrlcMK1Vm6vYkU7vUE4bJlLeZZxk976T4lcdfPDjCD9ncsVJYYjXzVWAc8yY7ZZ
	tTgVlZywk2FbhpHQ6hdmDvT4LYEnS0wLTfMvLAUe9+iYc8r8+hQcY7jQjVRVCPxX5um
	z8i7hbCKU/x3UI9wSi8pcmxKHN92p7+KwsmAXduc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181284bb59b-7900d861-3050-468f-9918-d2198adc4d9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c24de5296aebb901e482e73ab13fac492de6009429c9c3365f868102de39092
Date: Fri, 3 Jun 2022 06:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654238459
