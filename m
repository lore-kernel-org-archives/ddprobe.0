Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D3A7C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 19:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653422039;
	h=To:Subject:From:Message-Id:Date;
	bh=wx2Lsb0z877uW1ZzNAVuINyIx3p4brsLYNilFYAJa44=;
	b=W0/Lk6ugr4JNzrd1Hchsdw4H+KTAgmObkoMB4pSiXhVgDeS7V+5fehSv5FcqGlmi
	ugbByr8j0IqTjAUv+NrxLE10q7bTijeRvUuS7NRsdbLbVZLoez6xbLj1Xnft72Go16j
	fvgJYpnmrBJ6NMaqyDtoMWy+xIImLlD+4xOSnMBM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653422039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wx2Lsb0z877uW1ZzNAVuINyIx3p4brsLYNilFYAJa44=;
	b=VX9aILuWF7HV/m5PqxwrNjldQiVHqy7ZIHU/ixwIppKY+P3WZixvbKEwOJ9e3KbY
	kML+ZIa6SSyzQ6XBgFBpzb2gqlIo4shH3Ab4EOyyAgYvMBPICwP72YZNvcMWppKuA/K
	sE+pnnorioyWLgWqoao9y1RVxLTw08dJAfdid3Gg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f7a220e6-62ad19bd-9813-49da-8d9e-6e6d41481bb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40fbabc2534563cde0abfaf090d16dd3d5664ce3c44b45c4e4c9e03ed30ace13
Date: Tue, 24 May 2022 19:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653422039
