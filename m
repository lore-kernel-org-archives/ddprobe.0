Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8028E110C
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660654252;
	h=To:Subject:From:Message-Id:Date;
	bh=4dp/LRhipcOy2u71GLmWe3uLmzadlWst2aociepTR7c=;
	b=heswKt9Mf/rnwt+7Va295J+3sD24VHQbKlrfGRAF9Lq5VUAZvK8GRLckab5/iAdM
	pn2iz/b6UNlXk+muWNPLPTe77JQRQ/SB53s86EQYyQgrFmJN+Lpxla+5Cn9pQeS23/G
	KoVMwSwKkQIUwRPnaJo3sYI3b9TdfGI3ppXFjUV0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660654252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4dp/LRhipcOy2u71GLmWe3uLmzadlWst2aociepTR7c=;
	b=RghllEw1a9qjMJlWUiqyUMTtrgkdNZbzCLRN+S4nfRjphc/WEtgSMZNxvf8pyUhI
	TlV7rg/eG1w5+++ZwdfaKyCxgU+EefEWEdzvWhuXLqju/DV9aoZhjVuIXdkcup3MnDA
	knEvIApdYZiAmbKKfIOQracHqtPdhniH4xC1FySs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a6b4f2a8-7c4236a1-a483-4047-8cf7-bfcbb2579089-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b845130fa5170d211f8862e07f5be5c64bc454c20f4d19769a1a8441d5c1c0d
Date: Tue, 16 Aug 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660654252
