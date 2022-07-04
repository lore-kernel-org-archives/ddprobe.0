Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBBA315A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 06:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656917812;
	h=To:Subject:From:Message-Id:Date;
	bh=SJwFo4R0h7bpFWuLmZ+QOlI7F22Hzwoml4AgWA9TgxU=;
	b=BR+WLIp4dpUiRNZYg/14G3ehfZiwYDfhvtTj1B/tRiFacEw11xGfQslcnwaPkMtP
	t8jpFLE6Q3k/vYeavRkZd1d6dlIu7Ny5iK5dUAo0j8NL9iPezJV9XpbrpmEhw4w84ro
	bs3XIyBcVH2OelbcS/SYgdSS+N4Yt7re3LiSggQs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656917812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SJwFo4R0h7bpFWuLmZ+QOlI7F22Hzwoml4AgWA9TgxU=;
	b=Ke40gvn8LZQ8uAlfigCjxg+0EoPMSPl3Nk7RNNoMpdfz1VMX4PhSQF02DA9LtWR6
	GghD/rOXCBh27Fn6JMmP2yPp5Mv9AuEUg9q4DdBRGmYyMoHukGDOYS7uhzkb3zQnJhg
	85diYD6qGdWObm8EcDTyt5AcM+AHZ84YVxgfPEPc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c7ff643f-394401e5-4b1d-47dc-813c-cc0a475612e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2dc95dcd4a6e384faeb8772bd76c1a92d188d511828f78b9fb2b191d01cb67a
Date: Mon, 4 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656917812
