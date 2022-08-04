Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E98923A1
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659614452;
	h=To:Subject:From:Message-Id:Date;
	bh=3p/CrKIokp4Q/Ex18VYEtGNxYqME6PLBxGJhdmceObA=;
	b=aDdE0XC9cWma9mXzBNX4TKnke8ertHgKaiASxhK01P1kLDMyVdGy9ANVUjWdATju
	/zBcbP3Sk1Rr71XT9CKrJcqBCzPIxx4JG8LFSx37Fll/gvIGkRQHVFjIgUqG0cpZT90
	e0W/Kui5Sek+rzPsuOtauvydrmuJz5x51x0uG8yg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659614452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3p/CrKIokp4Q/Ex18VYEtGNxYqME6PLBxGJhdmceObA=;
	b=M766AkS+2+UZIiUX7fzZwyt9j2FfnonM8sNqpSckbtA6MyoPPXCoCfr1Zp2dBFTP
	mS24XDKEqL0ON468VORVal8k6T2HJmXtLtdh1eUkZFfZPmuyor3zGpH9GKQIQJikNZW
	oiDnepz7tbh8LD9vBig1ik97+66B8AxS6EtUWetg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018268badb71-77236cd5-6cdf-4c9a-a5c6-3ac95fe950f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba62c4a0791601661167aae6183e28dd7791d14d9790206177b20780c9a64de5
Date: Thu, 4 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659614452
