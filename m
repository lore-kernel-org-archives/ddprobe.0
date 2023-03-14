Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327B82CA6
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 20:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F04C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 20:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678826285;
	bh=Db/VO3hC1Zi7D7Zo1rsOytBBVe1tqQU//RM8E1myvVI=;
	h=To:Subject:From:Date:From;
	b=grJMuPwLx359iW9arxfZEDtp3cC9VrcSme2JLeQaIpRDH6t0UdkJUedLLBM9HFkoD
	 I9DJCooxAJUD/nomX0q01kmTupYXMKGB4xQPo5z1wNvJ7zUkf1zesDqcyEEXh4Y3wI
	 /fVBvfQZFqic3F0q4N3TpIV07FNEKngErLH7YO5iI2y2cYoRFwqPRni7GbCkxGlbL/
	 JKtpwx7X4kR8ee/KDzJiueKZTpHndhiwtPzkNnYmJVpK6QUC9HSiagtPY10+XFFTI8
	 px533zpeI1M+EZLcyC+TmOIm5SSw9IKIZqSyOTayAO23u/nGJ9ei8YQr+two9iOtFm
	 cgWj5CG40TJCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB17C05027
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 20:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167882628576.18207.17099610402820277042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02a7c43dc17a94fa4e2e5ce2b69b6f207e2a908a258fd9a2654f7613933af2c1
Date: Tue, 14 Mar 2023 20:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678826285
