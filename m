Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD4D7C
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 882B2C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672886487;
	bh=3+L56+yLylb0WFi48nEAT1gUFiso34mLK0nILcKZdDU=;
	h=To:Subject:From:Date:From;
	b=QrGpplOGNZDb1nTR70l2O8V7yy0APWYLorgrJuA1O9RfreEwMwm27OQv4CfCIxsWY
	 JgP329xItRzelhiskO5bGWkoShc5U3pfHHGfltuI13zQQ5ITzS6Ohnd5HVFdFMDVJS
	 ZFlWz2ySSSLdWRkYr5ycCmbzExblTUVlvP7uNey7hL3bNYuhuhDj6lpDUMdn3umAGn
	 M1lhLZ3rQdtnLR8zuTwcX/dWODEAcLdUpCvV0kyVtVzOvFV8P6i3ai0P0AIRuzFo62
	 NpXnLNDLIe8mTbaKnl3XxL11fJq3IMy6IydualI/3DgJQCF8EkczKdNqg7a/Ea4WTk
	 CJkoQy+6z8F6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6035AC46467
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167288648738.6549.7674075141446190270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0be8f691d4723afb38f3f191a2350c622972e9fe78450eb4ffffab0e221863f1
Date: Thu, 05 Jan 2023 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672886487
