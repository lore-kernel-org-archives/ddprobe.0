Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB5428FA
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 16:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653841439;
	h=To:Subject:From:Message-Id:Date;
	bh=P2Mh8ms9SG843JC6KK0V7WPrTO7ckHF8RP0T0KaRjbc=;
	b=J0A/QIFRRRSDSokfjBCPybGiQg8dNTYzn7zvy29FRFpJS3XiI1NAFDpb1K9PZXan
	628+Jw62m5td9DrJgEEFhc1W8ivgI2msYbiaRpOcmECOe/i30gyJZzltJQiwYviMPb2
	wC7G/KFC3MEXaHTCVPbQhu9vHtcerUXPhenPxMQs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653841439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P2Mh8ms9SG843JC6KK0V7WPrTO7ckHF8RP0T0KaRjbc=;
	b=kUhq1EqZhpPdPD/sYCJvMyRPTLc8pyeQARoPTadSBzMENZrh7GmcqeHaH1fgkbPE
	av4usQsHALaWls9oqq3Fpyfb+0KlWpgTIkomxlB9MvVBswp0hJ03jFQbYP3OqgPeWDF
	bDenT5jiwbGw3VxgtFnZNq15nVIXXtVhj6TdG7R4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018110a1aa12-6a02b40f-37f7-4c14-8374-d90587ca2047-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26676bdf27687de8f25cd6cbf8a0710f35396aa9986021b0b396c0acf3ecb508
Date: Sun, 29 May 2022 16:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653841439
