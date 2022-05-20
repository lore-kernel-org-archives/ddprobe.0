Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335A02FAF
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 21:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653081059;
	h=To:Subject:From:Message-Id:Date;
	bh=qWYmyca3QYYBfE/uzgB1GQBL9DmgeD/qoZf3IU/p69U=;
	b=dHVAw8g9GKzS4aSZdTqche4SypzCho/417taXAyViSkGXsIl53Fjcpj93u+JZKqj
	6hAVg3ZrXSypsw/YsWMxmg8TTLG3Ro+JGHCIH0zSfKEwxAybC//eU7RklJb2vHp+Qvu
	9rWEr83+cFF+el80Jkv2Vglr48uBcx62o5LGGyN4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653081059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qWYmyca3QYYBfE/uzgB1GQBL9DmgeD/qoZf3IU/p69U=;
	b=H4sGLLeLhJW4s+6H+kRlavW4dvzCU/SRxPc5m/bU3/I5KRsMycPq6ftDPA4+sTVb
	RMIxtS7IlZwDIYBbJIDMLxK86uQvW5GO2hs6e76b3ipCpEbBhh/9ggL3VUNEh7G1eL7
	4S2XLIIx8hjgywvvofqrvyR3yY9JtM03xXbUkIr8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e34f2ffc-c2fd2376-9c72-4639-83d4-d802d3370955-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cabd9a6cda4691ec5915225ce966fd4f4ec3dd40b43e7180a5314bfd029075c2
Date: Fri, 20 May 2022 21:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653081059
