Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FA67E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 07:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653030779;
	h=To:Subject:From:Message-Id:Date;
	bh=QkVpybGJe+ajRzPoG19pdU51n5JyEPrJ0UkFn0+wVeY=;
	b=YiFP/PhPuQ0hN9sw/WnUsFqABi7RDvq+Cuo9u2L+nRt3yFPGv6sCwba7fbHGC0oy
	CCcxnP6YuOs/ZqAdH1Uta8+09/tvKrYNEMHDsMtvGFAh+7OOHNuBDKKbC6+/SwpbN+l
	DbaQEXZnZIBaY6q5bvcM9C0bd6mUSh6WWlThPlSg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653030779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QkVpybGJe+ajRzPoG19pdU51n5JyEPrJ0UkFn0+wVeY=;
	b=UXx22/jIK34QvdozMd34LZmqAO/qA7cbaU59i0wZlqX+YDGpaeAw3Lsnl84zbbpG
	xwCSaI+lYdBIfC9Ett+FlPaO2YFk0jHc+5z/GxcphX3dD0E5tYjLDsc2hEsL6fWoGU8
	lxkbA0HHJ0Km/obHFD5ZHCqcZb/4vDks9R3zrzOo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e04ff984-9f57b2a7-777c-49e7-b824-acf14ccfeecb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e1b48c5a658c61536ddbe676a46ba19c317b58ba65fb713b25f0f6682ed8bf8
Date: Fri, 20 May 2022 07:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653030779
