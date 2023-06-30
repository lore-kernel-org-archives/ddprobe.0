Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6B920EB
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 04:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC37C433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 04:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688098988;
	bh=w88HHipHDGY5a/qTqaBKYYaZTZuUD/9EynE7SSWeEyw=;
	h=To:Subject:From:Date:From;
	b=l7GTinPLSf2R7xFqSLPmfVGuTvlgXhDRqtZSyHI0qfMJ5w3u/qIY7QahrjWzoMdJg
	 1LL/HkijDWDsEuL+pCDFSODForefhdvMc0T4vIcyuZqfdyb9TKykQSGKu23pPFKDdQ
	 ilj3QAoV5eQQlYIxXLJR1jX6/BzRx9urnfOcCa3APkWYJ1rUDZEPKrAWSPUaHWk99t
	 3N37/HEB6L/eql4VOqC2u/4uOfALCu6x3vEYcax/sbu4P3X36QQ67gZ9LXprcW6Sfi
	 4O8IR6DgryB1Qg559b+RCA3ux9BcyjPmIypvO9P+nM27jGB1D1o7LtqQwfSQ+RQQv3
	 o2EQOkwPkgB+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB91BEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 04:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168809898868.11240.7035651320395001164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2abe4b162a99dc7873bce637253b43a6894817586ed8a4148661e1168e3e54b0
Date: Fri, 30 Jun 2023 04:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688098988
