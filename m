Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C72CED9
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659704452;
	h=To:Subject:From:Message-Id:Date;
	bh=9xYFRvIOuNQf9GJnm634x2mqo21gDpbQjIURUIxCpRU=;
	b=g8NuvPmZdNm1LaY4/YGHSBxxBrD2eETza79csTQBdCBSKc5NB343Rz2dAoqhKoqp
	ILeMKTkf1nIkl1EUmczpajYXoidWxpxgIkIFf7lwXWPF4N1IjkSNAUyJhHQ3EbHbI67
	NNQ/CHSC9IRgmqUC0ceYWSOlSPOge6xqoer7e2CY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659704452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9xYFRvIOuNQf9GJnm634x2mqo21gDpbQjIURUIxCpRU=;
	b=AZ08/DA/oLsYWIt335ieM5UvfaP7efUXcr+ACj0RWdqWftgIdNZnYRc2qVF1HNvC
	W5COdCbDfioPuGfYf1/oqHqmfSY/YZ+k4xg/cJdfZP+Er+DKg7fRr1WJiDISUH0fV9q
	VQCcmA6NxCePTME2tQCoMJu88ixFsa+Tjchj8M0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826e18260e-f0678de8-bd73-4834-8de4-694594cfbe77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 038e34045c647a4ee89801b799e076c34745bf136f15f5df333f11687a729df3
Date: Fri, 5 Aug 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659704452
