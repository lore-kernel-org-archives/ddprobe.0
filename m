Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179512CA7
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656863812;
	h=To:Subject:From:Message-Id:Date;
	bh=Ywsh/8XZ6Y6y7Ks/1eeJSwOM6d4ZdWxpMx2jjhg7IMc=;
	b=fV05DNLLNJtmewDyoHPOh4s7F2aOcoa5ilQrC0Y9/7YWGlGGGc+GOOVRXYcSCPoS
	lcm+afmVKi3KMLgZPypQyTh+valigOTbz+Q5WPwtkYmze02eZcv9KKi62r8I1Mq2zW/
	WNn/SHuwD+tms4jOM6YT0VmLaGhEMRWsxdjwXBhE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656863812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ywsh/8XZ6Y6y7Ks/1eeJSwOM6d4ZdWxpMx2jjhg7IMc=;
	b=TkhB+k9wltIBkPJO9pXgDPLVftJl3Mi+UdCIVfidvyOwRdCzzn3YLcBsVk7y+U7/
	Kf/lshrsU8JJZ9Go6wt9dHnjrh5Ey0YL/4Eul9oxJJomRm6Let1mT+/CJktuGpNrE7t
	AzrEm9RUZIzX/O06nmNlj4OxJJ782yQ+YCDXAJ8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c4c76aaa-b41242f3-dc8f-4022-9864-d622891a4766-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a995ace489c9c232b7f37b92ad682ea2f021160c0fed85bfb7e3b2d3bc7b1d8
Date: Sun, 3 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656863812
