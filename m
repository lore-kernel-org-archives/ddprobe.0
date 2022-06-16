Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD4A7E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 02:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655345819;
	h=To:Subject:From:Message-Id:Date;
	bh=tyKkTJMKrAxx2/W3KPMDpQKJUHFudHKQAuLUx+7mweg=;
	b=O++2kWw328iGR7diwmg8f9kkhKmXyIN9ALTfYpERhQ2ETt6/YILtwhjQauQRcglt
	JYmlBfpnqI353z2jiGhM4wSLRfOX9u3q70PiYGAtxFvZ9ZpH0axu9VKrkC8wTspVWY7
	M6HHcY+ayql8qH3kE0N7JpCmAX4e451wYkR7EYU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655345819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tyKkTJMKrAxx2/W3KPMDpQKJUHFudHKQAuLUx+7mweg=;
	b=ArDaZjSHTZmx3553fMXn18dUeDLNCUUa6JAXgT7AWWhGNFKuXRsn15/c5S0kx1wU
	Igqf9rLg8ulYBgeak4kTVwwDHk1jqAEkuNi0qvu0z46kdwYv87NHzdHOHLn10ASltP5
	qjXreRSsRWwxSrizvEm31NLc7dtHhVbUHHW0hBGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816a4cae70-0ee557cc-3000-4e46-9a71-51739d806f59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7de44a77ad8e949b4c0892890774e451b7474d2db97b0a1d3d991a08b9b73860
Date: Thu, 16 Jun 2022 02:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655345819
