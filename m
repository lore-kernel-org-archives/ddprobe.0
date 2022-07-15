Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BEF7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657875412;
	h=To:Subject:From:Message-Id:Date;
	bh=UW3xSS0UQgdDthiSXm2r11vTR6TFRgKNl1fG/q/RAwM=;
	b=McP2m8FlK2XdioI5Z5c3mNrajEuWDNaC04wiPVDBan9/lW/DL36uhFEM2I6im7i7
	OhTZYT+WnPrEWBwE9S+xxG6PkMER8ZAGQTqt9OCzDGV70orth1w3sXyTO2yX0qdvY77
	xAWhVLA2JPTxMJwM6LGIEdwOAJ8y9vJHrSRBwd20=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657875412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UW3xSS0UQgdDthiSXm2r11vTR6TFRgKNl1fG/q/RAwM=;
	b=PYAWLpNB/nfTTpRZLpekHpX9Wxb/jZgFB0rl3vSTxy0XFkouF/a+Yk+lqJYRF5N8
	m1QrNVEZpE8S76y/Fu2j0q07MQ0Gi0RjfdnbNGM0z+0qO6f443fzjsApnZaZ8OePoVp
	l2ShiDv3n8jLdUb9UDcuhlHVwB7W0bbK4zsL72Dg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018201133554-850f4e65-af40-41a7-8fcd-9aad30c513e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6031aef2b30c0ce5ee1ae1c70c81b6dd21b3d3e9e42a1c39b91db8f8839070b
Date: Fri, 15 Jul 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657875412
