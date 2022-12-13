Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36D633D4
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 787F6C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670937687;
	bh=X8VDkQVZxLrFU7/55YvKjAgIMuhv3N3T+FfuDx+o/fI=;
	h=To:Subject:From:Date:From;
	b=OE2PNZCXwK2K52CrLDJ99nYFR9T0CzusnGNqKTrTr+uG/SBY7XAFULs3gv7cpqbFj
	 6/xEqeFf//Ro+jlDgehwEbt50cukyIbU1zjeW1RYmD4FNjNPG43Q/brzyljW5h+SQz
	 pqrxBc2Y7MQBSghk5f/HTAk4OPqHangmpg3R9nc6Ar5xeIaNu5wqx39KPJmQbIK14C
	 53pGyuKNNvseSFndwQTVUXwpFl1mSul9eFfTEvuxEx0s4Yl6n4mt2qHG2WNYHHYaqU
	 Zf/IyAOoF2p1Kv77kE1o01uxpPoLRZM5oyquvwCSjZIo9bLjshlVJRdlEltkQijtvA
	 1NAbMbNaVYQ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A14C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167093768738.15747.2480859056588635553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e8ff268d0c25659ebb9a0810a3a8c168f7fd3c8004676d54a94b2ce8d61cde
Date: Tue, 13 Dec 2022 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670937687
