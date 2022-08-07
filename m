Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C7D41FBE
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659864653;
	h=To:Subject:From:Message-Id:Date;
	bh=XORBB1BYVCYymd1m2HU3+so7OIxR9gEMRKljm32Y9O4=;
	b=S/1T/gR7hg3yXSRq/8vSqp8/gEwoV9GFIt5jOs72+Fwfos3Rmty/i0yUYpie8Wgi
	Yjdw4tw+PQt5fv+6SZPJBVKxlz5rDrONFVljjbY1dMU/DWddhRXdoe2RNOyeQjTYyrK
	iwmZi+M2L6Yu1ur7pLFl15NLPb5cEgN/iWpWbPSg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659864653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XORBB1BYVCYymd1m2HU3+so7OIxR9gEMRKljm32Y9O4=;
	b=KJICGqqnc2o3+IBGrMrL5CLYbSKGizykuNlSnqpnEM7JWgWNI/QSEUGgGOHfmsFM
	xha91WVBspNq8DaNzllcIvsE+fAI3FfIImBv+TjDCQpYLweKAMvExyIA0LPKTDQ4pfA
	yZjNVIXDKgyF9ajsrJTE1OqWNHpHzGqS8bTCbrNg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018277a49b05-7b77597f-416a-4d14-b7df-d675c0385428-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab6eeba52dfcad00ac27515668d5612b1c4e0bd455ed427323fca6c2dade0ca3
Date: Sun, 7 Aug 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659864652
