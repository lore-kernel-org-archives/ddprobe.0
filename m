Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383EFEC9
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 14:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98B0C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 14:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681482785;
	bh=49NATh+Rn5sZS3RPTAo+DUxzfyaXbfDvbiTpNCbYxdE=;
	h=To:Subject:From:Date:From;
	b=U6LuzdYp0O1Fc4S2WYqTzqpmuKO+L/4SX81wlHduWLL3JrS+Sj+sDa2tbSP0vK/K+
	 IPJ+z4i32hzmcsZdtJeBLMfHARhvBxq0JJ+illhl0DmXOxiVK/vc09ys0Gh3EzN/M8
	 jLbVqlg4t+MnnueFwledc9GmWbhpL9JNessU9byoqEUYXsJLpZZCoZ8K3aRXtHRor1
	 od6mokny/OHhcIN9Pfqwni1pE1M/uUCMhGS/IdfsEDZyN8OuGJ+zjsjb8gpLlG85TH
	 Sjg6C7h9jnKonJpw/bApgEUBooEJhB1rMzVOt/R3aoYaUVjZV1/Ws2Mcx4L+TYfHU3
	 ZB+r6SDFsO8wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA258C77B6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 14:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168148278575.22039.8231876513177675254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3df2fbe28f8a00f100b9b6490154c81e84d60280610626f2d9c8ef53525435fd
Date: Fri, 14 Apr 2023 14:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681482785
