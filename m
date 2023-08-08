Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772D715494
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 18:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC2A4C433C8
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 18:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691519589;
	bh=fgaNLQJ/Zi1hcKeg0GeEgB5ZvfkDyoYNX3zOvf2+7HM=;
	h=To:Subject:From:Date:From;
	b=rQPIxzSJDs7OP2WJjBRfr7m3zlqrWAn5sZLPRdwWgWc0ByS/mJSwayaSiP/yoEjCi
	 mrgth02cMjZP6FUvnl0TGKr5+UVGd4fl7C5dv3YSP3XVAu/KfnS8+j7QQkZ4NkDSJV
	 03U191Bv6tKqHgRi2O6Q0Ag33oF7Kf0Gs2La/+ZlFXqzq9ch/gBUGmb+GmC4FgCb9f
	 +QkmxGMmxfkFQv1UU+pfLFtCWR0g4I3bvjk0IZUWZccVvMM6nIO6kbLq3FGc603EkT
	 y0rCLf1hedZK+xFFxINfrVsM7SuEqVsc3gtEj5uzUt8feRO1VE/kNkhBRUplt3Bj5h
	 bt9BgOGz1OZ2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C974BC001B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 18:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169151958875.3391.17981171252600536020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb3686fd4574f9d465421cac16d4d8d92ec565b8f48c9beb33beefb72be29453
Date: Tue, 08 Aug 2023 18:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691519588
