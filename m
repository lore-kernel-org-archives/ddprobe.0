Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3317E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 05:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653110999;
	h=To:Subject:From:Message-Id:Date;
	bh=Is2yDQOIDanuv204f5ok89mlMGjBG68Mg4ZcGbgU2XU=;
	b=iKgT/m56ZzCgbdKwE6SmbKgcPxFMLplDk/NR2GAX1UxxlBP1zNplzPQqvt8D9jID
	2kV0BqYdOxwdiKly353euB1qYhOeBJhfZs3oXLIRh+un5ETu7U+hfWDAajXyg/qJg+q
	ASHWmbEd/Pc2dlK6/A9jOVc3D33dAsxHs7ziqY/M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653110999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Is2yDQOIDanuv204f5ok89mlMGjBG68Mg4ZcGbgU2XU=;
	b=V3HgoEDU7cqy4SdNACllB+EfTqzti/++IVtvsM3qzfOrWYMPf81nQZGyWBPQxSgw
	wm+cR1u0ricd0k1/yycMrTOWjQksRRPu3R70ZG004W6xZ41L6DajSkFMaD+cpKZepnB
	zlUk3SkiSFCcsgYoYBgJdtJOpomjC5bxnXgFQoAY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e51808ed-2e0c75c7-e359-4a3a-8258-c67f9be56c63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c9450814abb19678dadc152d15ea410eda20304ed8f4f3bc10f8ee8040be203
Date: Sat, 21 May 2022 05:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653110999
