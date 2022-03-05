Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CB767C
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 13:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646487084;
	h=To:Subject:From:Message-Id:Date;
	bh=EnFL/Vnw7dvUZ6nS+AcLd8KMPjiYALZwz9XqBifc0W0=;
	b=Uhe1kVGuxbOSX0J8YKlHNv34cS6IVntodhDIV5EgbkM5Nf9NnOwJIGfHQQYZKQyB
	W488EzrZwZRgJa/KjLkWkzV6y0TXQfz7R2W0N8yLfLcJ596ZYJanD1jZmJSnzV2a4D9
	+4J+MeNaFUU4bGZueZhsdOLhD4KUGVwq1u3Xl2QM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646487084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EnFL/Vnw7dvUZ6nS+AcLd8KMPjiYALZwz9XqBifc0W0=;
	b=RaH14tIxsWbhwt618wV2hEfhqdsE+FT5/GOtfHYGs8ONAfNbh09c3pe5yCYtuD1c
	+2/MM1YYmIBkK32N760maNNDZ5SxGB8SLpyRjVStlXG95ZKoFpISGI4ssdLarkl2wOL
	RtoOcQAjVW0FVAj+5ZeCEAaoddzESLaFAunVDxeo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5a471ecf-0158800b-02a2-41b8-94c9-c4d8735cfafd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b8a6a2fca55411cf4ad50d84a069401e2aab8e31698417cd34a389648eba0fa
Date: Sat, 5 Mar 2022 13:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646487084
