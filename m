Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5238217EA
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660960252;
	h=To:Subject:From:Message-Id:Date;
	bh=j8Zro8RcvEXH2OPo4bLTeL68JwBuYUnsraVIFvY2Xps=;
	b=kqs/280p/QGyM2cUQ4njspEAkSEDcgak+1kAuJxeF8DX0mi2HaRqraAZLG2Ublg3
	7SBF8svnBESOEJXgpFd8g3YqhjAwd10RkkRA7oXy5Gf1QFqkNx1ZPcTH/DC9cleR/g1
	hsyvrWlBGDS9vUQc433a/NsGZVMVsRcQuRik37ZA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660960252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j8Zro8RcvEXH2OPo4bLTeL68JwBuYUnsraVIFvY2Xps=;
	b=jP6UsKiFNa6cH+QRVKnOO/ZGVNTXysfrIk/g0ivcC4us/d2Qkuh62niqVO3pjgQq
	2KKFLPKObfNqg7uB4fACIetY0FEhVKrZd3w9GsoMgrnyIt9p8KuFnv2h5myWU9Z+VGC
	rJHLF+vKZBOmUDSubdMQpxpv86VDjTw7GW/+Gf/Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b8f22296-a827080a-de0b-48c1-ba1a-fc2b103a8adc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0440053411f407faba9cabf9ad05e0229a337c22bd4b9ab75c004d424935c108
Date: Sat, 20 Aug 2022 01:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660960252
