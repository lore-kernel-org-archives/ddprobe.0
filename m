Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1156E1FDF
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 04:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654490459;
	h=To:Subject:From:Message-Id:Date;
	bh=i4mJxnLX6ghaFMeSCmyv6drEuwz1g+8rtaOtDY7jjK4=;
	b=XIizefYG3pxp2AOO6dNRsNJcI5olCsxe+xxj50ak/9i0eRxYnJMVX/ShyNNe6hSU
	kpPJTah1SveOC0patCgoqWg9TToFOPD1B/mjIuAUo/3y+RDPwufANALM0eY/IMPtJXS
	ZadnjL1jtIX244lOsPBWRCcSPTuLSoiQtNgABoEU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654490459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i4mJxnLX6ghaFMeSCmyv6drEuwz1g+8rtaOtDY7jjK4=;
	b=JPnXVr/H79rWqGWPDvTUvA1Uha9cy7jrW8J/+nFah4QMponObhvBhxgC0mAoG0Tu
	V8Ac8Q98/tsaWI/jDdmXpiWZphXDUYetNeN+lEfa+LIVjeaq0pjyr/TcuYasfdlnlp2
	+jBI4hI0QF5iUEgWAIIRIzQxZ/n9iil497p6kVTM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813750ec89-8cddf2d1-21d8-4c28-9974-913a1a5c37a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d45f0d90c5aaec6e9842b18de62b7114b34ef5b0081947c9ddd5abb8287abf53
Date: Mon, 6 Jun 2022 04:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654490459
