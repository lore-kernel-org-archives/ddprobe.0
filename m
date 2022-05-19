Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACD3291A
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 19:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652987279;
	h=To:Subject:From:Message-Id:Date;
	bh=EITSr13crOwEOgNMBxCFf+Jf0gQpWNDBOO7S/nlfrgY=;
	b=TlKzLGchf/AX/rli6DhaK6AE/m0iPxURQtuPj7rDb9nlV+c7ynI8K8YmjqSr9XgY
	E25itq5YOPktZNubWarRZqJfjF/QAVdqluwQVBlDY/kPhBl1fErWPmFk5JqQK1S7EO7
	S55T/6R9mfHYm7VbDDIAlmVW3Ed0taaoO4VaI2RQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652987279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EITSr13crOwEOgNMBxCFf+Jf0gQpWNDBOO7S/nlfrgY=;
	b=FmBwLJLOkjdcuzAmFNnEQV7am/1fguwnnDk85DedOcW5jwZCcYpadCdYqGGnqQGx
	GmV6khmG8HwUX1zGJb6rKo1Ahfq9s0SkU+oaEBagVuKwdUgEtkF9fQ44UhPGpvQnnD+
	3ODBI17UgLFQOZJP+gUBhGOCE7fYWCg4khVPenL8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ddb837c0-1ddcfe00-e349-492b-a116-c9d0ff2e54e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dac4354563a0925bd3d5c21cd561c0c14902fd1980ec18dd297efe82eca93fb4
Date: Thu, 19 May 2022 19:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652987279
