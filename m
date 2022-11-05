Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFD851101
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E6DC433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667610654;
	bh=sfY+MN2v2bwNpBYOWS/SjaSwn1mTnQGfC1S94hVbpfE=;
	h=To:Subject:From:Date:From;
	b=D99aMbnhz8O0lf8Ah+AF5AE6Ofg81DruT+EEimuwsruIUizBpXGch+mU+p3lPFGmG
	 GXbnv8mY8A/3yCyWf49sW3l8T7zyr7xDNpWWvCr/7z07mQwfIIo+/p3K42fRK/4rJx
	 joblX8wEK6UdPzT6Qac4tlIC5O/yorwexCUF50k3x4p7Fb0hzGRLacjrn8ODo397NF
	 OiHTCR+gMoePuVLSLDHFIk4kPDyXKKqWqiCUo1TzmSu6otH3exmpeOwA9SiajB5B3J
	 DMhrZgTuehpPj0/y/D4YXwUsr46xnefMjZWpBJG5akDcAz/HIKa67d8rShViWwejFY
	 +e+H6rABWtpeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BF1C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166761065433.22673.12781347711686769080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d79c332ed024ec4df37f66edf22add1be9caa6d4ebad32245bffdaff53ce2fc
Date: Sat, 05 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667610654
