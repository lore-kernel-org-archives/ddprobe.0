Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9A7369
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647873085;
	h=To:Subject:From:Message-Id:Date;
	bh=X5Fx3xbBtjx8mzOsP7uVYCpJDtDon+KTsBIXRQ4Qx2s=;
	b=YHQCAjnC1Iyss+GJtCFm9KThVoQgxbhBNk3iroK2ucjpfQ5rJiflWezWPPmCkf11
	/27EHY2uqlv4sgzhu9kUnPFueMEi6vLF9dvRcZolvLYHXoKey2x6MiXwzxhGKxfpJe1
	O9vhlgYLPvL+gM5XzppLnGnzGBMX/hBiyTfPjMXA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647873085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X5Fx3xbBtjx8mzOsP7uVYCpJDtDon+KTsBIXRQ4Qx2s=;
	b=G4fZnIoDNFBql8eKelwjVwEH0HT8Zl8TlmntKJG83lcDC8aP2ITKbJ9j7dTIK2aI
	8mB6i4Cl/g4/wagP8d5nUHtfBRAWAa3/pahC+NON12gVQ4lZ6+mxI9NYyUQ5RDo3M89
	4c22Y5POBC48PcwMuZEMevnAy1sZ9aKUflfW1KcM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017face3cd89-ac564ed4-da68-4dab-853f-32c0598e800e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 812152606c92fd219c92c643102028190a7fe084595785ad9fa321b1f1269308
Date: Mon, 21 Mar 2022 14:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647873084
