Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FDA2595
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660425052;
	h=To:Subject:From:Message-Id:Date;
	bh=PoNVJYDA15rpDA5qMFvXoF83wBW3/N3FEyL4mVhaFHM=;
	b=fC8jV00Hy+SkYhRUDWKedoG0w86HmvzO1TnJ6R/D2pY3vRLmaKrjupjYtteHNw9S
	i36W0GIoshslIcpgzIxmXq1P0/84ZaHOEorpMhTdOFq8ZArO8hDRH6Hx2wGU4eJa9Jf
	3tCU8/HzcgPJsi/QMKm0BS97j7soaBAxSPad6+cY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660425052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PoNVJYDA15rpDA5qMFvXoF83wBW3/N3FEyL4mVhaFHM=;
	b=iDFYa67c7xgRXhyWhileJAORpjr2IxV8mwnv5bMNBbXI8+H3zfGH9Bhj5dPAfvJD
	99eoeKXXodBAgmHDXOh6QMb3wWjhlRvK7KSj1fDHDN6hldX0ZR7qfuqZaQH1DqqMgvh
	MGLpYaiYnwnaobnwK5il6IGV6qC1gegY+R/yfbSk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182990ba176-c75c7bda-78de-4ce3-86bc-4c9eb870aa30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e68c94d9b9f0420112bf3e82fb6d057cc192545652cd8ab80c3fd1ac0386cc0
Date: Sat, 13 Aug 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660425052
