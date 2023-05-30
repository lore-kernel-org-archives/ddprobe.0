Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE4024E8F
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 15:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6853C433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 15:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685461385;
	bh=UVhgD0oYPgyYNrV7zMHaOfRITDqcYtusBy9I7ji4D98=;
	h=To:Subject:From:Date:From;
	b=jtioLC5UksfrGHgx3hshlADWiRqQShlNCaPnGbf+NlAfIKrvoExmASE2oV/konFO2
	 DVwIUdvRSDrbGOJ37mlefhZ0FfqhEMQ/pggAfYQypWUpqyupcd1UsB6G+eGXiZiRWz
	 YE7pF57LyPEmYKKHkLM/9AwBC+E9IMT7UGMkEbZfC5mWxHhD5nrfAZW5WGYuVrovyg
	 de9pRin67amb6HXMrZ1QtPoiFvGFlOAfz7tP53ticdBVg0WApH17rNqesY4zen+r6d
	 /YrG5W7W3i2hlREi6ZiD7ChsE+IVOA22NUP2w6cbgIORkoo5mCwGQELUEYSR698TVn
	 5b/K1+fw6uv1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99BAC77B7A
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 15:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168546138575.15716.9551189902945092735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef0b46e867b4cc12cdced6441b940dbf6d467355fdfdd945b31af674c69e9a8e
Date: Tue, 30 May 2023 15:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685461385
