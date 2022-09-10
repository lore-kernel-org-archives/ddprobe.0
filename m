Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D319B7E5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77FC6C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662772253;
	bh=DV9SjUQJqV1qQABMd0bvd4MQaF0GCYFgULk2kDrA1Lc=;
	h=To:Subject:From:Date:From;
	b=mJju2Qntq0KzsRhyAe32J+CwlWrtzR6QO5x20guMpwI4nNd905Mm0QnCyaKjUqzNP
	 hE/BzT/dey+R/F5I8J9VWsYrakCnqtGzv5QD46kxOQBdHE31KVVusDApBG3LQZMQ81
	 Ugat4tVz4PqvL2RU7COJ68PmYlSFt0qp3J7+0KlIWYhMTBZa1B5lJHPfBkHrwtFR6v
	 ip+xokA/GFIqVft4qJv6AErTqwRKi4yc/gJtxHpDzWwttDQtxQecwANqe8o9RNuMjt
	 2Ex/6+EvWx+pjXJKR+3IxJ0h7y0IuYv1o+dNaDoI2vt5J6bPwFNObavQ8T1+rOK5ZK
	 t3BA3UvttdFVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B260C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166277225333.9791.13651540628513393546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d680acf6fd1c2b6b5e0ed20ed1e28f18a63e8d2b7865dbdb4fa54a0f2fe3a562
Date: Sat, 10 Sep 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662772253
