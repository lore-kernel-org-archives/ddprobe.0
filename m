Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC92E15A3
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67B58C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664706653;
	bh=vibgs9AxPoSQhkKgdmFwNe/nGIonEEeTFYWEm/BvC8U=;
	h=To:Subject:From:Date:From;
	b=bmJgGfmARiVX2MqIi8G8aosJgscCgwVu3dejFfzmRAPcVp6RYF8ZhYr4TcOVGJY05
	 QjpizQS7MahfYT/v8EvJEZ898Ktc1tprqQPZLqpIB49hEF/AXg/7KMNvVr6RZNz62T
	 W3mGMhvTWOqhpANsb329dvDymWME7T1rgNbCe/Xm5Bwxg/F30+tyGAVOQW/Nq2xiOF
	 p8V6Aa5mpFCviQEEar/mZJ7X/w6sw9EhALJKYiXfvBPDkxGnbBGLImUfyn+Vyn6RIX
	 QiXijXavFKm/Z1CCkLngXZq3n3NWkAXoO3Hs5n7oSs3nVttlp6/o6/gV+ccHvEBZf7
	 bxVA4RTy2BRew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52D1FC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166470665333.1053.17963531974817588421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b55c828356c71efcc17672869d0c1352075858283f93cb43872499649acb04
Date: Sun, 02 Oct 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664706653
