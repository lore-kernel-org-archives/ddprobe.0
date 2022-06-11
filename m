Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF4C7C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 10:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654944359;
	h=To:Subject:From:Message-Id:Date;
	bh=HyCwxCNyj0097PlZ9q2aCz3GmX77IdI0Ump+T8Su/J0=;
	b=SEVkaley5OfnTqRYbEInh9UyrxqL7ECjXayGRwWV8D2jQIexNIZ+WaPAeHaZ6G/+
	0BaSggesylOm8mUkRo/gexZSaf5lePhmzyMG6E2+t9YOhvqNVPGG9ngTGOwll3jj1ZN
	MBhXD1b4NdtNEV2rgsHKxdycekY3oMS6cWx7BWjQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654944359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HyCwxCNyj0097PlZ9q2aCz3GmX77IdI0Ump+T8Su/J0=;
	b=eBEEdwUiKSIwkN+dNt66ZfgaehsNWloXqGDP4Fugff4cmSDmBB9EOAcqE186yJju
	bWGPN+SCejAXifv3AmLRx21rmcfqmAXxVpzl1N+Stgdc19aiQ8VTtSnb25b8QMHmEq5
	aiT19dCtjIgY1X5YouFYN0a1Pvpae57fgHv5Eb7Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181525ee339-f4a5c1b8-6343-4b9d-9040-2f6354f71c49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14e629181c20541784055b471eeb6c6941deca7860e0468a0a7e01ccbc015499
Date: Sat, 11 Jun 2022 10:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654944359
