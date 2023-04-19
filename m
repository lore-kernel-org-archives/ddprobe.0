Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF6FC941
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 17:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB9ADC4339E
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 17:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681924506;
	bh=fat1wSJUCf469vJDQ02T92qFvbEf3qYSaxRA77hcD3Y=;
	h=To:Subject:From:Date:From;
	b=KHSS5uJi3uIhXxqenILGPLjE3AbH8GbGNwzmv//DK9Oi2fvowyG2cnIq0XaIKvpem
	 f9IjKkngriTfYHTojR8tORPB0wN4Dx0KbLB3wO9wBLfq1vQRTDMl16hn6hxfcoTOwZ
	 cEXtbQxfY6AcJfdVImrtFtk6+475jFIwpJ3CRlKAoYafe7wuZkoCyJ7NPlA4L3cwFr
	 LpHGZTTTCtR3RlFIZyUVNsns/r46VNVj1ctmfu0U+ef/St7CS6L12+li9RMnYl69Ga
	 3T5FYZ8BEnoNdtnljMrHF9egz3GlZ3j00VhLy0XV+j6T36+C1ztojtUNbtRXFieUXN
	 SeZK3BTwovjrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB7DAC77B78
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 17:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168192450581.21122.2427513438752032182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb346323b6399639e4334cb5a49c566f2a23a2077e1c61e265a73a67224432ab
Date: Wed, 19 Apr 2023 17:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681924505
