Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D312CA6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EAD8C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668869454;
	bh=RNiXOt+9D23g/ft/8bcMY1oKIIYE27Q+Alb1etQ7ZPM=;
	h=To:Subject:From:Date:From;
	b=XE0+tCZFFyS6cpwe/kur61hDIwC0LzF28dNJyAckJukN0YLkxhanR9jc84PCSSVeU
	 NdNlyIicRSVDOvwseFt8G2j1HZk2QkLt3nMu96QDZMhG+5FP6Zln/j3URwA5lnzxVJ
	 YvdRa1d03VDaiP1WtZvax6mYbCTc3ofBYNeqUs6NuNIREXzo7KW+D5TwJg1OPVaxdS
	 CkS1HeOSBvQ0Sj9zvFmEkxMXi4aaR4x1RLY52XV2vOCt2GBzLINSqIK+Hm108v8dkN
	 Le1l8ycq5+pKxa+R6jBxk21ZrnAV8sfGpdMxWDK86qoJyrYGSNdr31U7mU8haVpipA
	 b+awtWGTHgWmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 607B5C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166886945436.23967.9204592509306886622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620a22379025365cad042761cf9c254c3dd1c83e62a4bd31c18f921db895f965
Date: Sat, 19 Nov 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668869454
