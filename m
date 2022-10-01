Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2DF91874
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C04CC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664615453;
	bh=GSD/MNf+yJd9pRbauabiMt4hoHr3sUQ4zeAHgI7dpvc=;
	h=To:Subject:From:Date:From;
	b=dO0zO90rAT1I03z5i8aDdI9hGYB6IbI18C/NRVQAOF0fbEXUVd52N+iVKc8S30bwO
	 DVxtx9O8MSaxNUoDIS/9D+UPSAEUEjDmjddNbHzVfknVX5mkoREYIavzgy04iAVUes
	 HOCT95aggv09eTxuMvVGzGp+E0TH1Y1RJD0RMdy/wyOlWpvLhj2lLjTIiU2rf3AncX
	 ve5okrze97LUuW9I4JKkHBPq9R40tPW/x0lOxqXA9S61L1ZtHuVx15MZ2t26RtGl4C
	 bMiWmdn59vHxV7v+UN1F1ijHJdtMvQScBzCSIWY7GEEvPFUxp0M2V60QJmifotkrcg
	 0haAJS+UnJcrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52724C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166461545331.11422.12750732039994623964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c522ad80855e362ef06e30793968a6485df2298df58569e8ec82d56ad81693c
Date: Sat, 01 Oct 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664615453
