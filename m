Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE15EA1
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 08:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D712EC433C8
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 08:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689496268;
	bh=s59oa7SBhqR7NcO5FOc3YXf+WzLaRhhaWGm+sH7UynY=;
	h=To:Subject:From:Date:From;
	b=IR/yrCoSWAFo+sMxOGShdNwzNLe3x4DTU1h+Ko3x/K2YzBeoyNIBArymmPZKZW9EI
	 Fy3pQCee+3PlLOeec8JJ3uYDZZLTwaVy/p7gONjgRVyz5xY5lRW1SHCyLKgPekMIX6
	 e0Rl3oZq3RLy0lccgZLsZoqZ4xtHXJXAAiu79kPvRvuHZoih3Mwzy6qGqa5sz7B+U0
	 onYIzzI+jjUE1wTiLEFjvvngHMzZMNXMCQYLDKjYUl/EbFfJIQ7FveG8NKaT3DP+J5
	 uAaA6rCNM4XSkxhWRdcIGj6jJSBdNWjWSpIm5Bsr0gqzUYKowatOCoLUaS/qqdTBp6
	 sQYlIsNXztlRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9DE3EB64DA
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 08:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168949626872.22206.8218537481652922896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28b74bac7558544f4a01dfcf8ed4835062c3c6d1207fc7fc56508eefd9cac328
Date: Sun, 16 Jul 2023 08:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689496268
