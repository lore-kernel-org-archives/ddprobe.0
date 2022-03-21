Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78B0736F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 04:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647836184;
	h=To:Subject:From:Message-Id:Date;
	bh=QDkzlflapQP1jw42b25HoLdIjGmpwB97lYlflSO6VIc=;
	b=H98M77Jwze/osTL86CyDFpj0uYy9WGPWlmSuDOcJk5YSQrkUOlk2FE8CMcUfQjdl
	gwaDn954YayK7dVGsAze8v8PRktjQmC6vysgfYXtShGDebDJbQcCzU7rfdhB1VP8oAA
	2Yb1VIThCbgDOJdFYQwJGwbHad09AmNzmrS/l6vM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647836184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QDkzlflapQP1jw42b25HoLdIjGmpwB97lYlflSO6VIc=;
	b=CDjx+S8eGaDb+OMsjfLC9keDEhaYKSIEO6h/JVONt96R5Iyg8fWP0kW0sbQ8wRr6
	hzAV4wMKm6fWoe/7XMT1/f++MJ3+IoDtsTeCAV5KcRAKj0vnGMForc6Az4z8LgLSiKH
	dXnfeuHmhcvGeK+8fAe/+9xR5ZIeJ8jIEinwyZOM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faab0c0b7-df864551-1c55-4c9b-b27c-4c1b75a5ad5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 906ecd9a99489cbe27295d56a590da68c1b0c0cdf0914b82e77097488ad6258f
Date: Mon, 21 Mar 2022 04:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647836184
