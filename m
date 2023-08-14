Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ACF7C140
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 18:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0944C433C8
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 18:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692036788;
	bh=KHm/B+xc4nE4ZXpCBiQdD0ZDOQtmCsvhRr52Cy8zA10=;
	h=To:Subject:From:Date:From;
	b=mVGjhNlgc9E89rpQG09Frrf3+ZMv/0xsceqPE6FtsMMI9KEe02I1YkUEOYvqmEYXh
	 1ysyxY9u+E6A4c+zwYImBADe2mTCGqN6I4RBkqMgkq54IGTvHs1+22W4LNraifvFyV
	 rV700pKIz30rq2joS5KGVSuR/k4RKmKsQC/AEjakUs62fkvHSd23+PUGtlEbHv7aB8
	 p/G++V2DV165ghSAebOxLDbURIDLXWiRBZkyoNUZWCq5P3jhJWiCHFPLljzQc75Qki
	 ojr4+6pnbR/l1VbdxeiJzsa0wlkFw+AfINuxGehZFGhlCe67rS9R5IotDby885On4Q
	 ZjL1iSCYhztZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E94EB64DD
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 18:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169203678866.18962.13934226213057756734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f85440463fd2b6111e3a0d036aea13c4dc0aaa853010764ba9cfe0de5c18eae4
Date: Mon, 14 Aug 2023 18:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692036788
