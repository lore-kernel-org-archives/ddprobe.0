Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D3A81847
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 01:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0698FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 01:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686361686;
	bh=AAmEVg95O3LIil3ZulMR/CaR25MkWhlH7gO2nSQqUdA=;
	h=To:Subject:From:Date:From;
	b=mtIKrkhZ4QXHbboqnWkw8QYcLSDKWHiUz0zosyNkMFCIJwBk2fQANzUNxiH3RLWIu
	 ub/suAXAexU+pc2HZGXBZEk4HGnVrfrYYco5yB58W4IGVG+dEvYIiKlN7n+tDEySrG
	 q6AmHwk+isSF4hK14VxbnGZO8nt3rV2tLrzfQGzYnNGOComG5WrqCpJDq6WCh3nbsz
	 8k77K6HL2q+KvXSjnNKncz2kIR4zh26r7jRtiyhEUygB1NBqfWPOLqIe17QvSxM+cx
	 ENf9EBjrwRYDAMypP8ih2rKnteBhC/BKm3MaBnX81uM2HNNIL18/AAy464dengUw0M
	 JDYVGvHI3ML+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3F09C7EE29
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 01:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168636168585.25806.15151269607434925667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4d20dd9b228bb0105401398d58fba6457fdd822f4775d2f0f36ac7aeee37ed
Date: Sat, 10 Jun 2023 01:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686361685
