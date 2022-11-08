Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4EC5CB0
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95695C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667886054;
	bh=2r8sFwcHIjcxjdNKBOZKD+yWEpHM1HTBysXyWxrwONc=;
	h=To:Subject:From:Date:From;
	b=feo6osBoP9LXLNYUAUEQmOPv4N7U379kKJOvmS3pDGkIs9fliqJ4IjhqJA/AVRa38
	 khyzMvzi9JhLSEE1uLn9qJ09ETTkee9MLK6ZVNOME1aiKpnPoCkYu3KUwhZXpK3p04
	 hJe/vb6VewVWWWDUAT+wmCWZ5OJZYniBgI8uT2oPqaoIaTzNGi26k+cSW32L8xPiGn
	 nv3YFR49YKBUCjwTFg93qJCULd1dcxVzOf6qYLM2PTz63pT/BO91g8OitWXqZF5uv7
	 DgIQIueUtsWE+fxkw72gxNNioE+csM4uoDxX8tTmjiEiFwwvkZOnA2EyuEvQYqSI0I
	 Egu027sR8SOIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68E7DC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166788605440.424.17972638281972395768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfbf78640dd201491de92510b35d3d11cdeac260065495050477e1df9ee6647b
Date: Tue, 08 Nov 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667886054
