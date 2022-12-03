Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B005523B9
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A78AC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670059254;
	bh=uf3URR8k9ZEuA2Aa9zb2oZuCsvwYIlMT6C028KbocLo=;
	h=To:Subject:From:Date:From;
	b=hc1UQnAG1/XAL+73YvsYXZiIGDZhMAEVb77llK7UuXQDMfEixfJdgzZFGoNvfF6YY
	 xilBAyo8T5iBh7kOOveG0GRLASsqPe2ZBwjNzNKEKWG1uWVezS7ctpXSKujAUOCkMv
	 EJK9y3At9MEtZfynOtN4uB5k3P18YTdTaN0ZF0Hfj4T0VDiOLulPU8R6q+j5hL1QyG
	 cmnubeAGYCYeM8GW+LDhXNtj9wEuumWVueJnlbBO9K1YE4QQNZ/4HRVz9Sa/o55T7/
	 1vySWu6JAh3+973As8fy0OveJW6TEnvRu9hjSusFgQWoQxRu8ghOZFTr1G11evPLH0
	 0AhKiWhNiw9jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5005AC4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167005925432.19960.14739400280394572771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8531634af9ea5509035bb391c077d8fa5573e030e2688ec22a3f4afd654c67a
Date: Sat, 03 Dec 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670059254
