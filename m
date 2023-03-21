Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407197E0
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 00:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD56C433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 00:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679357825;
	bh=MDUJPbzikYcqYlDLgNCRXGDjwuWfad74D3kLtnKrhzk=;
	h=To:Subject:From:Date:From;
	b=JtK4ekp5ltbx4ptoJN2p78ytmB71MZaxajep6gzg0C/p6o+mscyqxRi/w/c8pfaDE
	 sLPM9U5VBmNUaWdaWF9rCPlbJPRinO4YspNSavAqw+cMj0Kr4Qn01X3oJyhwLpTfbe
	 iE5SGIxAeBPM0iaY3GA3ZXDaa1dUKX4FohkD4fRY4zm84yWp0Y3q4xgZgdz/wpgsHH
	 9BsldhAHwLQi6kiz+aM2nhsMzFhkAy7xxCuwzE4FgMY4McLRYPFZoNoPPCb5VXJLHa
	 pjiz+A2EYl9padWwVU6IWDli/W0GMIp58JAOXzL1/uYQGVXBOoNqf3SdH9NrX3SbKw
	 3+69SoR8uqHbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0479C6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 00:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167935782578.6429.3099904084810566051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7246ba6042cb651202e58714378b16a4e1daab071a8c0867d9c7288905225dcd
Date: Tue, 21 Mar 2023 00:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679357825
