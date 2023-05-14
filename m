Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D81322636
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 05:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEFCFC433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 05:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684041485;
	bh=RckrmcVIQ7ZFB3tdQZvtM9xby8iMcRquHzrwLN2RWeE=;
	h=To:Subject:From:Date:From;
	b=Kkd8/yPIU2oRH//VQj+XRwKHhFALYHtpqvFSLDYx2hi3AKy2mJqUgt38DMT0oOyk+
	 B6XwZ8iZ9jCGn4x4hOH8vfRrOzZIZ2JRW8y7SGEgz+cbaFWJWHoTWAQ5kS7BmioDW+
	 2Yo7jbUJCnj4t6znz7i+6uO1mQEk+P/X/aWhaMrvrbquSxLqkZcilywyYuznQV/uS6
	 0yHiWKmwEtoSHQT1N6/4Ue0ZVwzoJvMpo5DpIcNRu7SqxKc37KqTuDKxDcR/NayytZ
	 FTggxWIj5zJ9FGHmiF/WbSHXTMGwDVlaILs13her25+LkugR6rrwQXAZ0G3EgSKF1O
	 BicVeQQFr7JsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1FE6C77B7D
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 05:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168404148575.27974.7291244921890204252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b29b8cf28bf51f8c848de8ba35ae05068f43a7e6127732b8530f5d93d093335f
Date: Sun, 14 May 2023 05:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684041485
