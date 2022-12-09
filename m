Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5E1EC1
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C4BFC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670586687;
	bh=WEmb4JmKQtt+6SfBPVIChKwEGm1VOiXE286W9ApsUfo=;
	h=To:Subject:From:Date:From;
	b=ORMGQwsnptCbIeapF1RYh7dyqq6ZW841Wjfn7WUy7rAaaf/fGr9gGLRSxs6BVvW9t
	 0k3vq95EdXjTXkREKVXjEI/7+fYMUjLrTyNVkYZBPYQRg4CPWxszgeXFC3cBXwWnkH
	 Rv+n+Bsyh9LS3cG0fkkDodxkxek9UYmqWABnrLqjzB0Es2xvSb9gWLdY1xVhYgqg1P
	 q2c15tXTVrp0FFT1NV8No6lpepBny1K7QMX9rzZQfJF6utQFmZKVm1Ursp/WAL7kK+
	 S6kWFLyGYMwlka2UDN2oSy9poKo9DiGIt2F2t/mUcuhc/8MXwtdE2XY7W0ikG9M5WZ
	 /0EVgVQUONqOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F2DCC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167058668744.28567.13056035156954287763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a79147e45a9b854adaff39a40e8e0df910dbcd1b5dd501bb5c27c4e304b72d5a
Date: Fri, 09 Dec 2022 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670586687
