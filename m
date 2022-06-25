Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0EC4A3E
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656177412;
	h=To:Subject:From:Message-Id:Date;
	bh=WqyDLZHTHL5q6JMM9IdnHgCra2BjoogPF67XjJORaRE=;
	b=jYyjxt2Y3JAz9MisCLee5r2yiEbZ5kGolRtXymDysy2KBxvUqtaMiVwD1+GiVFlA
	Cd6TT0KxVGz8toDXbXRFktBttSpsRO8QXkCZdzUpfMbAEtbJVuHGBppEhV8Q4Fsj2w7
	o5hFYuyxGQaXLR4B51qWj1RzVQ/h2OUjiDmEa2FM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656177412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WqyDLZHTHL5q6JMM9IdnHgCra2BjoogPF67XjJORaRE=;
	b=XR/yCTILYG0zLuWbpnFDRQAEy7WvVPifJRSxI4ze6Fnto/44/YeNDFit79tvdt2h
	i1twGmS1DNhoIWH+MtlI+p8nlEUEnwW/4etvWP0XYLTnldxS7lIRCgnq//fWdDjOf2j
	+W6yRG8+KO0iz3kGtWP6N+mfe/GpjPuBEcJBIRpM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819bddc8c6-e2730621-ab3c-4dd1-9505-293db80c9524-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa676d760161deba23eb1bf47bab945278bdc008bd12231cc49f36d2842cac8c
Date: Sat, 25 Jun 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656177412
