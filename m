Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218722C80
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 18:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658515012;
	h=To:Subject:From:Message-Id:Date;
	bh=hRwnEiiGExQ0GykO+r5D2MmaxTC5jbi0oMFxL6d8hiw=;
	b=ZEWuTfVBrUvOo1GxoVCqzw+RjLFc+OuoziTnUaX7Yao+yIvTv91L6Ft0DffF3Isg
	5KH93r0k3Qg/exZ8XTo4qYcRu6ahAM0WznkW+tMRjUaQwZd7CARY2MNeSMJRQXt7J/T
	5DhobAHssaLOvDix/mqVT3eVw1hJCLd/kbylBe3A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658515012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hRwnEiiGExQ0GykO+r5D2MmaxTC5jbi0oMFxL6d8hiw=;
	b=Nd5vU+pgQjAFbTpunYfSXbdT1uKSTlWx/sVCYdqX4ioKb3lG+xJBj4QcAj2dHoBA
	zFWO+naLAteSQ1Eb0kMLlYhKo5itjJlSegF0SFWpOixjgzkAW1t02j/8AZMJV+cy934
	l0BGROroANbAfwK79BesimcxKxfDcE1TVpygmjmY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822732bae8-7514feec-bc24-41a6-82b7-34741c796f4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2823ccd5cb403badcbe681a8849973b9259716dc5182fe5cc4680195eecbab8
Date: Fri, 22 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658515012
