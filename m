Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA95E63CE
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EAA5C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672921287;
	bh=dmTCiv5rwVYEBwXPbKdcriALsRieSNtrbLcpCDfT10g=;
	h=To:Subject:From:Date:From;
	b=nT7nO/rK8G7VpP5VCecuuGv8Vxbo99Q8dxWzwdFufRQ+QhUex8tw7aIjZ2EIGDJ/R
	 G2/WIyM0cPlzoGSKmJpJBqe9SEenIrtSAnnRvYclDSBOdWabZIf2IaNTWhNTdH3EJ9
	 F2wTlv2D4SFayr/o39Ad1QuXg0EElN6XwenH/1PT8JR26igY8b9zurapqx+rqfwWmc
	 ARBXiDve+sRaOnCJmEzlevQy2jafys46vmzfj+jUgg2LlJ00xJi8iRrTe6SW9+JwKO
	 zB9JI/4yyJWJkzuMRaiLig17HqA3wP/aXs9TGNSS7C2c15YeW8WC+tOsBIUFpkxwsJ
	 fUq/SWxZFSdnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7FCC3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167292128738.13942.6908458076444366758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daea870dadf4b888db5dd8f1ff654d5ea9d42ff6cc74eec6a0987306e02e6a44
Date: Thu, 05 Jan 2023 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672921287
