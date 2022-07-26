Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F512621
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 04:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658808412;
	h=To:Subject:From:Message-Id:Date;
	bh=+5UrVKd7OeGGFWDKVoyY//vTiRZ05Lrd+rQuG9xuu0w=;
	b=f+QBNOUY5utOlX9g948SO5eBIeDgYB8aOsSizlWMXb8baCkSrAwnu9q8UmiWDQje
	jS99xMHrOWim4W0kWF9BYPICQoJUJ05q14/gaYRd4kYzrBe+roMc2mqG+fePr07hrdg
	0nCg1vhgeEw0dYc3VRsktbIcUut5ur3d46qYr8jM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658808412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+5UrVKd7OeGGFWDKVoyY//vTiRZ05Lrd+rQuG9xuu0w=;
	b=LlcBnuIAjP3h0B8Zc4hez/guPp3QLS7rjtCvjUzLHSWeUfRD7O0HoMODC97G0Z5g
	dwz+VbK+YiapTsCNOnz5TGX3n539cFu2NQZgtu2MvDNUbQRYzK0n/hUjkuKVYu2a5nm
	kYcbkEaqDchOCBK9ZV5GnUjMgV0bFqYTXuXKVklI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018238afa885-0b9a9882-f801-47bd-84ea-1e64873823e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9361ec2483740fe8a524ad535ee3240c486292636ccb91235a1c0ba1c1d3cece
Date: Tue, 26 Jul 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658808412
