Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB0433D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69AD8C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664905253;
	bh=p9z9UG0LsPO5l+77vhi0/djAUzqjQtiBWciNUqk8ymA=;
	h=To:Subject:From:Date:From;
	b=i/+rgsWbVRjd/FcgCN7f5T+C03t2Lrhd92cehH6mx6UJjsOObpcTV5G7S70t253xQ
	 i3RfGzQV+OvIv8EQFzrnmrnsJrVo/LuQUspe+jdZ/5xgQfdoHjzi/Q8dEL0C2t+MH/
	 GngBw3rOcaNHoPyeVb6JIEJ+fMFz+okJL7WOu7EGQfFzsWFievFNPblQeFwJyFnp1G
	 PyrGVAxiBg5yP0JXir5BZPHj0W+PkB/3mdkM1x6zSzRFejpREXClG+DL5iRtDkRhHS
	 nXsjE9jo0+uvRCvemnuZ+DtXGNBYSIfQKsrFJl27Hon3ubCF7uI0msSkCRTdZFpqzb
	 Wfi3bnSkGrLBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 532B0C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166490525333.5751.11417469721490370453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30dde045780f3db2a4427516b7b78a8270aee1e454520276c8fa00f288d04c7f
Date: Tue, 04 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664905253
