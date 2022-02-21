Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543E72581
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 11:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645444284;
	h=To:Subject:From:Message-Id:Date;
	bh=nKu44hwRN0Lw3FcuzQf3cPWeHk1nPiHbGvwbPcOYDWY=;
	b=g7fHHvL6B7Erx1oU5JGCs+61Re7SPGQRY3B7ZrxBOw/9+Kso8FO47gPzLYylbIca
	CeJ+S/PRFRX6bpTJDic4VT30QPw5WzfHAi32RZcF96WnMp5gNK4GTvA4mvFaAcSBrL1
	fNPHQ8xTs95FwuGuL28h1tD4teYFyPMh7znMGpiM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645444284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nKu44hwRN0Lw3FcuzQf3cPWeHk1nPiHbGvwbPcOYDWY=;
	b=MkJMk/71HRKDWN1D2LtSx5smPDuM1bglraGxyJOJR/pWOYydHMiu0aqCzD+G6END
	3XmRuSQB5r7a1wsY34G2+7bpu/ayCMtr0EfqxDizx+TvcR6c+NlSWphGhBL74X+AelO
	wSEihpXuyW+a+yRB/QgTqdI26gF/bfDlDMG0n2dc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1c1f413f-ef34279e-2799-4c19-98c2-768c0c64d56d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad3b8e7eedf99d0a3d64a1f67c65ff372217ae94af46008b935824915da32fa0
Date: Mon, 21 Feb 2022 11:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645444284
