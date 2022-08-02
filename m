Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCD87F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659436852;
	h=To:Subject:From:Message-Id:Date;
	bh=u3WLxbadl2mB+uegxDhVCuUGH43RC+EkkwdZTNUjA3A=;
	b=aM8ZtcqKtIELEex+n/OatUt1VqMy+MPi2YDr5Y1jn0mF/L1gBEueDgZht+j8Envm
	ejB/IsT6HWaVjhn3009V9rvoxgJIyPJpu2UjneLLQPQj9BskOXT4ixmReqUCKWtxYFM
	0FbcCKZN30d3vnHBygF2qvY3niIO1WmxGHYMt5x4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659436852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u3WLxbadl2mB+uegxDhVCuUGH43RC+EkkwdZTNUjA3A=;
	b=JpWaWIuApjMGuIRodeG13K1GeaESZVlI1BfJreqCTAf4qUYGVMAee/MjaOdGPSiT
	Kjq2tf8PTWoc6aEgDeATZa47/G1vNvCu9XIlXVfacBwlRdaApoBBPciLDVrDquQSNaZ
	sde+/UypbZ+b0WkIj02yUlfrCuqfYenl9ZGj2T9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825e24e55c-ea1853e3-cfcf-43cd-8ed2-345d6577af4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c6e73ea81eed8feff2bf5cd98003d9272fc0a78f428de3f9dd76b733839f743
Date: Tue, 2 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659436852
