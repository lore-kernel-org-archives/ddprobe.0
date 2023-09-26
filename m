Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7496236B
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 00:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B6AC433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 00:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695689108;
	bh=ObXkms2E0pKOUJIvm5jOPIevBH5SUqD6lXGTiOFJ7Ak=;
	h=To:Subject:From:Date:From;
	b=sM6ippy9xqky01FINwC8oMTXEWA6EFJD2Ozgt8w/E65VYTf9WF7uLANhoPSC/4Trc
	 Pdti5l4ZlK09tnSnFvJw53zP9LPP/lBsXa+4kpQMTuryaUovMrmb63A3DbECkQxf7d
	 8cQ9XkWtsDHeW5mKPQNWeSY6rejZHRsuJAkaPtxKrww+RgNpaAoIPBHmnynHw9LP+8
	 Q0++YnP0unT4WxLRSqmRIskg+fSAmePidiFGnb5/fgLbYgGuNRPE31AXWHEWrl83eX
	 DVV/e8ZP4vtps9TjyXgg5nBdKkCHtldpdSstFcslDqTqEdfsBGIHixDX3ijjLGX1XJ
	 b0uBTPs72s4Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28C1E81806
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 00:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169568910872.23392.17802638815544994467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a24c38210c643c724f597ee275caabf3bd302b50da7879fff7d017d0b21ca8
Date: Tue, 26 Sep 2023 00:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695689108
