Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1447B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 16:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654705199;
	h=To:Subject:From:Message-Id:Date;
	bh=eAKqofGbTG5UeEaxWlexOSxxMQbY/0emNV/4q+mVRFI=;
	b=hjs0rNN4xKEc7hM2NmR2rwSZoIZVsXMlwI0+EwUgAzbDUsnOA7R8JytqpWV9rumx
	ZZvgZgZFoOXHvXSbYBFSPGRAf96axFL7r6arlfk1m6r9pr33keMFGiqVnn5Kkuu/XS0
	+i8IruOVlfcnVpKIVXLTVHxljb+JsAPn/7eVJjYc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654705199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eAKqofGbTG5UeEaxWlexOSxxMQbY/0emNV/4q+mVRFI=;
	b=cJhDGO6L0buTpJiST3r6P7eCHI0HLbOj34mYiis2LjBQxdp7xXKt+Si1VRiKBiI2
	Tk+HdKqh6iSM66StIQWAGWwRQGrJGYqVlYkxVH0x7ZEzfN3YiKg02RdbPwRgAm2djQ9
	G39GV595x37PrLOucKc0wkSAEyUF3n6Aetp1SDBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181441d98b1-8fedbd06-16ec-423a-9aa7-581e22c38bcd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6523dbf27b074a31884f6cf92c0441ec32ad48d07f0ed4345cfc1487dedf68b5
Date: Wed, 8 Jun 2022 16:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654705199
