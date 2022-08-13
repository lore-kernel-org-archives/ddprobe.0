Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79E6658
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660370453;
	h=To:Subject:From:Message-Id:Date;
	bh=QH6kSEifFD8io0svYX0o5ldVpNikoG5F3gcl3Y2LRQE=;
	b=Eb/htrrs70Oyg1dLTJDZu6ccYALupv/wdJFNHV8u4pnz33clPGE87FFY8CYixsQX
	W1iocFZN4SlXj2sjDZzIuDTJz/wkjOHbvM3S6YZK3iQSv1Oe3T4zYUlVF+vrbHM13yO
	X3ga8m2mZVZpTDs1r/pcdV5MHzUN+AC4sXCDuvMQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660370453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QH6kSEifFD8io0svYX0o5ldVpNikoG5F3gcl3Y2LRQE=;
	b=PqAysk5S9lMR6DxpnNoBB0UNYlVbsGaRv+CPNh7V7Wns9B9Xg49RVkm/WAJNnznc
	euA+PKPIM1urIXluYUt8I8KAr+Z45W+5U+JQKqZYSba0cE6t/JI4Tz4SwMcrK5X826w
	FWwyMaKwHrpd1933u1OOzKG77SKJNd2O+ZQ+EXjo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018295ca807c-09c24e10-6e42-4e72-912a-90dd51ad2527-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 471461a0a5da0966f01976d9d4bc328c881f6ecf9a6a05e9c602bced0a52712c
Date: Sat, 13 Aug 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660370452
