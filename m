Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164B04C62
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 18:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657910212;
	h=To:Subject:From:Message-Id:Date;
	bh=QBkqs8VnxDAblMiIwgamydYjeIju/OcCK+Pc+HpfHbM=;
	b=HIL7Ask11aDZalxSOJNA5jdwypSKRd6SrDIIoiAzLrXbjhhA3N8oQVcyEsEw1uZE
	9415MbSMN5fNWvZOgam3vIiDtVir0+Tkr4WmE2E7G4tdjryHrR1aHpME07K6zf8Bitc
	+0urBcIMq8gJCL+JAkVI4jkkkJ3PjaeVVoBWjXPA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657910212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QBkqs8VnxDAblMiIwgamydYjeIju/OcCK+Pc+HpfHbM=;
	b=FdVeGdtZUxwdDC/VYpmh3U5KrWLU5d/HU7rMtUow6vXA932f5b7vPah0n71MWQg9
	9eSIpBOlY05Hma0Y2blC+suU1Yvxz6F1bgOZCxM8nGNGEOQB7Ko+aU20Jp/L5FqW6+I
	ezunDFw0kLBTInRbDv8dtgXNVszhzphBnpojtt3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182032636b2-439ab3cb-e488-4de9-bbcb-ec43638bd60d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b02c78814554e0ea47ba402ee50c0a7c840c8e6c27a92a0616ef82860e4d6d6
Date: Fri, 15 Jul 2022 18:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657910212
