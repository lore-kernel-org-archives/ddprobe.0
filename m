Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5C9A34
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 12:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D17C433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 12:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676724365;
	bh=NvxdEoEmqreMuQK0/PxrfMg3xHq1joakFxC4E4aOI5U=;
	h=To:Subject:From:Date:From;
	b=a8Thd2HcUZ3L5ywJn0sJjNFpHLCQyJX76fpEJH32PI1mz48zf1uejc93Qx0dvbGNn
	 oCc9as3Y0IwYtOgZmvlG+VavQZG61zidDipsYaus5c/Amb9y6GU+D0a3d5ls7w2Lde
	 0RIwHVmSkdqpFJcX+3gnv7soFkSQ31vBX8ygC8oAaZ1B6zN2P6nqF/Ab5ki3j+sdq8
	 N27yjXZmxa/sorRf5XX3iQSAcUAG/Kn+Un88OAZIofIqGMkptImnehEPUwItE5NT1n
	 Qg0gkW0M3wklMh+Q52VilX5jZcOLCV0amwLJ3ctsYAyr8SC1OWjEAkyzfMP20Eyc3m
	 TIeWIpZBq+vNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7596C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 12:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167672436575.32117.3726870262779898739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14cf8b0daafb36fe4508d4709097c8fc1cb7512d1e0f6fed57c1d8ba58a650f9
Date: Sat, 18 Feb 2023 12:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676724365
