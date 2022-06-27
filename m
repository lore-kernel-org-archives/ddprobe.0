Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3203A33FF
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 17:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656352612;
	h=To:Subject:From:Message-Id:Date;
	bh=+T5UaDKpNnHp03mAsSB373IoGgDe1PVtXA8SVHRMiFc=;
	b=HYjm4ayUwmE/aLdUO4Mo3D0/agjOJbgJS97FHPIlWb/ssc7OEMUEpj2G5aDaYnKe
	5fI/i/ys4QH4SkMwLdtF0cSQWlIAql2I4zYjRh2MV+HCs35+5A7wkAftOp/+OsxIc42
	iYieMCaKe+QAtx1gPXaxnOpW8Eqg+88ElmCYDdaM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656352612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+T5UaDKpNnHp03mAsSB373IoGgDe1PVtXA8SVHRMiFc=;
	b=GRW5AVZR3YJ0wk27HjxxgcHQH8QMHmutPbBa5FxeorO+i+EMiDgYv63r6SxMOpII
	eajL+SOivNhkH5a0c+DkhpxbsneUcgT80l2uTrujcJBv74hwjwVaYBiAkTLbTxzeomw
	sZvLfwsPxWzlVP4WYTypQm2kuI7mUUL7tMlaHe34=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a64f1fb4-37ffd78a-d21a-406d-baad-4d2af7a67c57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e55c5a14fd4e7600525d9bc090d03e9db3d162806fc488250c962322ea0555c6
Date: Mon, 27 Jun 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656352612
