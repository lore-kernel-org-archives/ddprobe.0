Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2D4D28F1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AB5AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665863453;
	bh=yF9W5h8+KslYRL2IoT2/oxTm2qbn+dA+XxIOfXoj9pw=;
	h=To:Subject:From:Date:From;
	b=VouOxvLIe6nxkT26PpjSuuw51KB8Nn7VsF24el738WKFz0UJzjm+ebDHa158mc2lW
	 ToXQATcfZKJjoAT6sNmY4WEFrGi6UiOb7oc7yvEwXHnj9QKDtdCMHH9w9+ZsZH/zX2
	 nFooge10srkomPD+Up4UbQB9oymqQG550jzgWvv3SRCbipeBnSLAFrQ9Lzt5dQ3oSf
	 3jlqVrfyNf+tcKcvepaVlGlK3seFokjfMMgftKWo2E+K95rvAOcQmkNlfXaYCSAqW+
	 UUeF1cvglb00PmBei/8uMH1vRuIqclYNznJttOtiI3sDKgYoyabNis3PcRZzZ3ZJ+F
	 Sh4a9fJvv/08A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70F65C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166586345344.4721.15052348525531644592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b8f724743c3481f59a21ef69e81bae4a42ce76c4e674a2461adeee4b29f117
Date: Sat, 15 Oct 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665863453
