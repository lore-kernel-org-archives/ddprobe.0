Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFC929A3
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 16:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653064619;
	h=To:Subject:From:Message-Id:Date;
	bh=4YRg+3JR71tn/m9epPA/5VLucisLyPGtkNd8J8eaQQ8=;
	b=ZbyzQ4Yo8JB6lWLWdohkrUNJc5YK2MJIsf1OvXvJVQzTA13cYe5Dnj/D64b/fw3C
	Z85mca2vWGwDsrkUH8CyZf3XvGwVVuSpMQJEqv9bym0iPe1yxcFZT03yIkD/FWE1vBg
	QpepedV4Q2okdFYbMQM3XIqttzUImi7EJIFjPYrQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653064619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4YRg+3JR71tn/m9epPA/5VLucisLyPGtkNd8J8eaQQ8=;
	b=At4NckwU9dAFMqTVmVzTOIDNPQ5lT2d5dG8OoPcH4Ecu/il9svfe+C6se1chdLjB
	fpR5Go7XYcpyrMvPhc3rMe7Fxevw6NayDB7/sqpEkbDu3I1rQFfMYRyH4c9gLJ2RMy6
	TjgAJdqxNr/kWIkxL5fHIEgB40y5F93CBgjIBeDY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e25454fe-9afad56d-d0dc-4990-8efd-0a6be7446939-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26b81857d8503c4afdfe47c504c0b980998f6ec535b2ab981d8b55002dd8e618
Date: Fri, 20 May 2022 16:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653064619
