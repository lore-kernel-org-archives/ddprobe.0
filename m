Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CAC1377
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661090452;
	h=To:Subject:From:Message-Id:Date;
	bh=AtjlLXV6bNs8IV2zJUzpfLMYY6vgtC76FciuGaFp8Rs=;
	b=Km6RiV29mA/sWa5+Kh2Y8i0nnKP5HZ+oZ5wUOddSAO+h9T1FV/g++V/mWpI9OOj7
	teR7b4JP06ciPqZ//8boCtYRoKPRjnz79Rtw/h9kdWb6k+D6EyvmrazxWiAExyLg8dQ
	TowpKPflNW/4CtULd+WyfeWlmCpQMhv0goENIrrs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661090452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AtjlLXV6bNs8IV2zJUzpfLMYY6vgtC76FciuGaFp8Rs=;
	b=b9E6iPykFzY6W2Zd0fQVvSAcpVuNbxDyOpNDQb9I4RQUkWxkFm7WvacbEC6LDdFF
	EH4gDJX2cdg86MkiyjpQkIIPtlhZIPfq+vEjYKnakxzmm8sg2EGyJtymBMAEJ4trP01
	gak26sUNQC1W2eILgxAPrRRq3LczXLeUKXXQoVhw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c0b4d44f-f9433cfb-6a33-41fe-8671-0d317b9da738-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d10e4eeaea263ecfdf7b2864342c490c615ccd5b99d74f2a36683c0f7f13bcc3
Date: Sun, 21 Aug 2022 14:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661090452
