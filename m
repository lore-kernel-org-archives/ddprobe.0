Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5764399
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CDEEC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662202253;
	bh=C2qYhxb9cjWbjO6mNUkXCln2qfCMYq/9yLL2czvsHAI=;
	h=To:Subject:From:Date:From;
	b=oeMDF0NDpzHYqTlLZU5ffNlK8CwbwSX5SUpyQQ8P8w/FtIR4o3Yb4nnHHQ5tpud/q
	 RZ9w3j9urUVLEKYFqmZsRtvLmozaNf8DQKYsFkToFil/S1xzrDp7VM6qPjA7D25u1H
	 K+y+FCW1VmYkAbKVQv/zHbOe2jIpsxJvwN63S59fxsEe6XsSQkwNvFI1sEKzje7tfp
	 c4FT5HkgvuoFoYUSG91Tx6Tz9HMmwWS32CcTi+28h5+lvOsUrFX/z1HtQAY5Ir7eCS
	 p6GHmLIN4hrwfhJATOrWThvRvORJVoWZvoc44XKDVdHmxmpwPWiaI55EMnV6OZrRFA
	 G5rFa4FWvlx6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 704F9ECAAD5
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166220225344.32307.12743802340140977153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb4f8b388fa0153cf6ffb2c32f180f2c19faee765b67a7bda007ba856c7cc0a
Date: Sat, 03 Sep 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662202253
