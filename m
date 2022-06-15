Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E277A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 09:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655285939;
	h=To:Subject:From:Message-Id:Date;
	bh=IBEruSrQxe4Frc/zlfVgZOblAWTn6SseefXWHl+k/7I=;
	b=O/TnR1BIFOfqRNTji1gwGFkK/R9xbttrB5ouyicMYeOeoNn04Opy9HFACG4OlzE2
	+2N9B0DLNI0uW0Tb6H80as2nKgKOr1GoUmKJdpaCRdm+0G2fXL2QSEpqUyciWEjf+vn
	YiIuPLW349wsjwgEtb3D80r8qvSsTcI4nirRlvug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655285939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IBEruSrQxe4Frc/zlfVgZOblAWTn6SseefXWHl+k/7I=;
	b=gKpGUx4KGoGcE+TBtncEpttBwkOJiRncjrLzELoT55xdsHec3qJyJ1t/wXnPyYrU
	/b6GFOpwuBtAWFAvqGZyo+g2jN9Z5Os4sPw77+6uoWyWnwSmWC4HvXaAzDkJL/5DsPV
	YIIc86QpsKcEFz2lCoi1jIlD9ohuktaZjzKisYXU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018166bafc1f-5a8b27a2-8d20-4895-8b71-17cca31b5ad7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de3ed04cdda95773b9abd4e1098dcd220c9e4ca7a51e8ff4cd22fb5e61f8b2b0
Date: Wed, 15 Jun 2022 09:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655285939
