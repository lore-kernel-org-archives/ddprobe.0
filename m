Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77C9A20
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 14:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 835F1C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670682687;
	bh=rhzMp3rIszkDM+OoPdbSazVnRiAWWTkp7FrSIhkQBnE=;
	h=To:Subject:From:Date:From;
	b=IMoqJKQ4INsl+6QBpY+nUjytoGYlmzrdVNMQOFTTHnVNS3jbTVdWffxUamNcw2dxc
	 aSNA3H9WvJija/9ANrbIg/CGDyZc0XTYbB/FmmWJOBZMEkxYNKfeuMmB2pl6tRae3k
	 JBJ4W1sbyfU9ZmjYxN/yeR81PxSBfmaEwknL5zhnOdnw2E4pRfjf34HaihXpUuMf3/
	 6qt2kG+vPA16c8VnkQVYGEdACGWJukisrYssCcYbbPWXf410QwCPzqo1hivKM8Sp1f
	 6YQEc6fuH1hc8ZS7u+yomTv+XYFVtP3GkrVcDp6zUlVWFDPEjp5wKfQDm5ze4KMelZ
	 /mqjyAmNGzeeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DB5C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 14:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167068268740.18754.16256788056899675387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29353bde04f563101a4493b5d98615194dc3b64ec4a52f43c2b6a0ab93a1dd1
Date: Sat, 10 Dec 2022 14:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670682687
