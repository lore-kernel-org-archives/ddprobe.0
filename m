Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522B446AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661124652;
	h=To:Subject:From:Message-Id:Date;
	bh=iKzj/8KykCKDtk7p/SmJI+p6A5D3SN7ZYKXMptloH2k=;
	b=Z0RXwnRH0kToL+GRuK9Lh9UwDWxbzFSm00DSQeLcurpiVA0SZaMssxfFyNa6IFd2
	Xsf4xhNfLH8AgDaOad4SaMRBU1SlAB5+fFFjeR3opkbvE6pDQBrza+PoJPoW+/r50TZ
	PZ7dRzZl7z5nK6Cw9M7VhC7LW0RCt2c6sp6/3BAU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661124652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iKzj/8KykCKDtk7p/SmJI+p6A5D3SN7ZYKXMptloH2k=;
	b=EzbEdWqM/EBnXau5pR6sG1Gm886RXo4AQYzwgG+1KCsgjR2b6+ZY/Rhr24Wi/Oec
	crsyyXEAeHTxfffuczf6D8AGTusV8/1LXp8YfuKq4i6N7EPN5aY/JaN3YlaEDzr5CAz
	/nwYiUGxPMSzBtr0vszrXCrsq4pHhH8ZaKZLCXqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c2beae0c-7ca09b70-7667-4066-b585-cdf385001101-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 198456cdbc5c2efdbafb82434a5f72b4aecd3e7b5ea4319304e36f602f1dbbde
Date: Sun, 21 Aug 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661124652
