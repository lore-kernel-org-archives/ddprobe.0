Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2AF5624
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 01:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658800613;
	h=To:Subject:From:Message-Id:Date;
	bh=ULcOPR3kLYM0icL1L7Sow21WTWDQ3wpxTf2r9KjSxqg=;
	b=N5L02baaZnFkHaxixOqnVv3mERd+srjgqwoi17/PR66wkwRmgOkchXQALwCDBT7R
	0xBkNIke9R51gWee7ZRusKFnnXSJcSxWArP/bJ4XrJD+hTVCYBkGEyo9ZBAf6uPEFZb
	/scVqISKtDi5DAZ9PNJQibYM5ea0bVgp2uu6IydI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658800613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ULcOPR3kLYM0icL1L7Sow21WTWDQ3wpxTf2r9KjSxqg=;
	b=bDK5SMmEIxXyAdwx9XVcOXzmP0Hilzt6vSVgXQystFcidACD2kulKorJoRhq2jy0
	uwf2OGy8vXAlI+SkfD454s9kvUrHSZuBovFbLnG7+VLb7lfKoeZwxRuieFzCSUNyZXQ
	vOXU8GezqPkRPcHhbW4o66vPdWcjONZft86UljKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823838a436-e07d43c9-6c5e-4239-8319-0e4ce104f6f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ad50f8133f488ef8b3c8b4a0a084b9b62d3a7fcbadc2b8c5bae3f5b899531df
Date: Tue, 26 Jul 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658800612
