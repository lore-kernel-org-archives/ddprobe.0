Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8AC77E
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 12:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652963939;
	h=To:Subject:From:Message-Id:Date;
	bh=jHCzn+x/DqjvCJ3lYs6BBGSXIa4mU9vOifmJb9itDi8=;
	b=dWHNFNQbbblK4XSyzPRNUGARfApu0mWAwbk977IM/U+zdaz8JyIc84Soa+VW+OND
	N+QKff5/fNEpoZI5NAA79aL5EE2S/04aTxaEspf+O2UwiRDq9O8CfYBe1xQge9LA7Gb
	8BSnxtbmRkj0OZ48M6SX/3k7d0wq2AyBn0aEVheo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652963939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jHCzn+x/DqjvCJ3lYs6BBGSXIa4mU9vOifmJb9itDi8=;
	b=HgVZtL6I/Z6rcHaUTYcaMfjw3hVI+pYroLTA1KEYT7uIfHTlFcqBZf3FyCeO+Cq2
	xCjMDZW3/DTbsdwsFWVnJM3SJHlyRdCKX1x0E5rI2m+2Mlzi4hMHg5Hz3edRZ/mDjUB
	+Gmio240qm0eGfTrooLnj0AoEYzrzxwzOP1j2EQU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dc5413d3-0a2b46e0-2249-4e70-9ac3-ceb36a823e53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d73c3b18de41be7662c0777e5d269a83f0c3f87394204a2f9649503073a952d8
Date: Thu, 19 May 2022 12:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652963939
