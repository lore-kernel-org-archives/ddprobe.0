Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE7EF2F46
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6786CC433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669376454;
	bh=FKpDcAAO4v4tFsOVv8DSS6SUJl5R3z1e4qYN9C3TNGU=;
	h=To:Subject:From:Date:From;
	b=NgbvoTWRPFOvC41of6wXrxy/1BThQBqnDwuSXlXYqT9vkbWO5eTCXUgKDHP9Q80Tl
	 CX1zHI938PvhP5Ym8LY6O4llGxcqXm8ePQAEEoGIo4yVRrFZV4zoIfHeAa47EShC99
	 CcbPpcnBCJU5T8Oj/JWG+YsdlNQ1i3LQwgnrLETjT2jytPYn5yx8SUpAeO7zoqAP7s
	 LlqDxK2I56qXvF0IOBdDn3uFCtheCokv4wM7mSrKzlXpoKK/XJ5zgNX4OmJozcIVk3
	 T0kPsfzpTsrGoJU3+DYtcucmjrgJnhrC6eNUWZolNgOBOZhKy2kR5AO7apFu5ScGNy
	 wRxLrHbGADhdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C5AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166937645432.4687.9768982954235568972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9346d6261caa99935d7136c2fd3967a925cd3d8a81b7335441974714c4ba0e5a
Date: Fri, 25 Nov 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669376454
