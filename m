Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8548629
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 12:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650198538;
	h=To:Subject:From:Message-Id:Date;
	bh=i9NZBOWalMPVQWCTWAkbvT4MePVGOpPr2FTiPNGOk6E=;
	b=RruVLxLFSF/trHLwgQU8HUhCgjDj7eYpbtB83TSMET12fj3sTll4DNNSDr/VnbSO
	2Jarg6KuUCwIH6iPCIShPkXdE82R7PVFI8mImNbyaUjlmwWOI5eaOGuu3kacbH2blt2
	HZ/x3BBuJy3bji5/hxWA8nPL4OnPOls1AL9R/7W8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650198538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i9NZBOWalMPVQWCTWAkbvT4MePVGOpPr2FTiPNGOk6E=;
	b=EjQGWNgZa3d+HKdhfYgMMmbRQAewbQvxsZSZ4O5H/+BnjRmd8OXwbSkF6PxWmhpR
	1n/mElAWAmVuUznJV7OyFlZZXqTzLrlTC/S1ZsvSEbhXvcYc2kYsySZXJH/NAH92Ts3
	aEQjWQALLo18JB4+x1tfFk4koRpj3++DRgppavoU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180377f6811-e23def2a-c56d-49fe-a950-2ec6a6bf1bf8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b941f4ee224f217d93daffce59564135f2e81a5df1cf78892231816125a2ce38
Date: Sun, 17 Apr 2022 12:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650198538
