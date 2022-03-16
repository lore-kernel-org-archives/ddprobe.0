Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAED32F2A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647447084;
	h=To:Subject:From:Message-Id:Date;
	bh=BibAUbSiAdBc7kADonlhpOy/wLjfHnuYwQbWpZ6VWUg=;
	b=OGi+FluruBsyDvil23YOg/GgYi3mdg9U8HRMxOuxCsp5pzBtqZLWALx1waiSPE63
	KO8DRzK2QyMBexoiginyA5hVOrSEAAD0aheyDdrfnrPSZEHrefvUuUqxCIY7CtH/7qh
	Yreqqfgy53nhZK8lsKvVNs+LVMbX+GDIKKYw6Uro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647447084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BibAUbSiAdBc7kADonlhpOy/wLjfHnuYwQbWpZ6VWUg=;
	b=anC1pR/XKv7YuePl2BtyBvCCCTlpvri/GQH1AQ3repwWGzRkTDghBGzvsHZpHUT9
	vIdCZQdP4N5hd+ej8osvz2XQoaXkGx7V68mraiBp6WH0dbCc30xmhQ0JbvbERU5yKj3
	sXyOBtoPw+apKAhuroEaqsye6mIWe77XMfZESpQY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f937f8eee-14279f57-850d-4b20-96eb-93e6a18ec5a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 407e1f7416923c59a002d160f2a74432a98c863cdcaa86742f378e5948e964e8
Date: Wed, 16 Mar 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647447084
