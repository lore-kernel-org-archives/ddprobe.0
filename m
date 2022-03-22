Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A81B7A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 02:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647915684;
	h=To:Subject:From:Message-Id:Date;
	bh=iUIiOZ5Z5QD3tiROTw34sy7jAqzcX3p4ObQiRmMT00M=;
	b=BiAdPjgQK/GZ8IP2pLYEp6zTeDqefv6v3nbrXHqovIMp6RbReWdjcz9jyrZQFVVt
	YZuLoBH4CV8O5qj1N/zW9kFdWn/WBoTCjz5N+RZBqOJhBbYlUnhk6eq6oeNRd247iTv
	C6woaXKbHnMoa0UHHT+X2Np0p2iirD5a43e1iYjY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647915684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iUIiOZ5Z5QD3tiROTw34sy7jAqzcX3p4ObQiRmMT00M=;
	b=IqEvsAeCiuc/yS6uysCbuuJ30c44asVHcoNKdtpMdMz3CqnUiRHp8eajmu7RQsTC
	5yacUbgOLBR3BUc7FoR4Zpu6R9CHnwep76/6nPDRmESXLgF8ZGI/toe9TPzkjfsuNbN
	QBqlXjNtFOGbDH2ZjJj1tWOvi/ZdjI2m3x445OFs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf6dd3cc-54c41333-4c49-4821-9268-cc1fdcb2dabb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d88b3177cb8672e2a35d6567c65985f451ed44e228333d0d48ce83e3206aa1a
Date: Tue, 22 Mar 2022 02:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647915684
