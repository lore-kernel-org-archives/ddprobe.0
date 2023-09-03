Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7084B7F0
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 04:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8F3C433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 04:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693715648;
	bh=zOdyTQPyBgX3rrSW6hw7wbJdAru9MTf3E6s1YJFLiCA=;
	h=To:Subject:From:Date:From;
	b=iQPLTN51mR5RdkxnlSCpUDmO50zooT3yqAKcai6K4Jycf5gt8WDVOCoMsnuou86Jn
	 lVxmYpI9FVXRWNaG8pERn1RyLsFCl/FVM44cKEq94wWdpqkpDjgteN/ZPy22ULvBaK
	 Lzno8I8xuy3q3IeQbk9ieom6SsBt8ddXOFIpuoKBoVi+W3ixRzy62o9J8csRwjYic0
	 yFjtthoSpIt7bYFZlVrB5760Olt/taFhXdHMEndL4JLpyLEt8frG79S6zi/cQIoSDc
	 /MLWdpM58tqfXWNU+SvSGcY8i6OBKjCv6TSYhk56MrLrVOVD3UmOa3LIs71SyjDBh+
	 mnZNEP3ZmI2MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BF7C83F2C
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 04:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169371564868.28965.17635886354715868641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64209178de423bc10cb5d544174fb579b7092bb9913342ebb97f39bd79a890e3
Date: Sun, 03 Sep 2023 04:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693715648
