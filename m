Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17503362
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 07:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652513999;
	h=To:Subject:From:Message-Id:Date;
	bh=NVFo6TTo9f7gBS/b7eZVJwIK2v/Bj5hijXiBgm6VNCY=;
	b=BIELTtVzxhyBBhn5T3aRCvHC+/N4qvknuVZU5rl1ylrmG6PFg/rsitjSUjoNdwDP
	Kok3U1IOuT9K4IFQngNQV4L7kKXGx84xh72DhyFxPZT3EiOVd3sskpFTeQw8QuPmjvT
	eTkEmvTrHQ7KJJH1UyYeqxS1+WBosCjzWX8fzV50=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652513999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NVFo6TTo9f7gBS/b7eZVJwIK2v/Bj5hijXiBgm6VNCY=;
	b=R1LbX8j3m3rUOuaItMkoADR5gf90jzq/oQjsakQDaQTJtPlDcCfQcX+PNTZ5ehqz
	j4+XZryqe+mgBuEH2eniuGR02FeS3R5bu6Z/eh9upHLDgd+HzbT1S2owFQp9nYRTk7u
	lGv7zVSTkj7/w43AOy3Smu6VAT8zcvB2FeoGdibc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c18289b4-09db86df-c03a-4890-81d3-e3a03217b2ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 299c4ccae3faa9e93a22870d306d171ed0590dfee53108fce00e9dc1c6d0d402
Date: Sat, 14 May 2022 07:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652513999
