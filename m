Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B0F2F3B
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 23:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650669538;
	h=To:Subject:From:Message-Id:Date;
	bh=Hn+4SgZd8OlW+pekozSu7lERshhBNlITC/QCBQJLXqU=;
	b=XmInTWBgPevlHHOlJOp1XleP2jRNXy3LoIh2YLvfEecfhOMb1xy0e0FLhkIFTmLn
	TN0oYAYTWSp3fU/+EOEFTI4QNwAQvJR9yuTD5rleD9Pt5NclekfXPq3Rehtndy31pIJ
	rWIZpnaFDJl6AzuCHb751Dl6rDZW3HUk2m4SCurE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650669538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Hn+4SgZd8OlW+pekozSu7lERshhBNlITC/QCBQJLXqU=;
	b=Npej2mpjs3bBDA+P66LMwujsomh3u0WOGWDaoZ36PxIbT+3sgRA6PooENr01o37+
	2HLQrQfXuQddHG7aZjdTymFFQAkHqdhE12YqZC3PSajBV5p8OUglFV1CRB0knzbpc/S
	tzsltY9wOjwIjP8YqFheWem3m7P89kltTRdgCedI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018053924bdd-9f03896e-782e-470d-a56f-1d43f6618fa1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e13a5767a29287a0fe5797ed20cd53f569d0b1df96c89a2a0db39b9dcecc41e8
Date: Fri, 22 Apr 2022 23:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650669538
