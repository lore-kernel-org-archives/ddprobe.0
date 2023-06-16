Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D95446A2
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 06:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E2FC433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 06:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686896948;
	bh=BgWAOkDbtYIrV8lgWL6TYs/oNeEqGmwJlYvEFNkfX+E=;
	h=To:Subject:From:Date:From;
	b=LzcgZ2hF2h5Wd2ezFISypaUZnQM+arvTyg0FNOBI1pYuGXBItg8etJ2EGEQDzBDzt
	 6phvD9krN1xoBqFpVQ8fpQGXZ9obv8OVi2h0Q0rOuJ+cXODkFaAHpVs9qKVlIqT9vT
	 5FPl7JzAqT87+7hSUszE4mUDK6/cvpbHGWs6z58kQlRQYgFZIybfh/uRdIFwzI1HYE
	 tGjtxEa6tPsPppJTu8cTNdoqBQ0YtxI10yCWRmqz0947uh8uw/ugSxnKFzjWNCtSCh
	 8KE8fPNB+ln34X+8/YveloL6kmTRgTOPFNxoh6udM5PeexADGyTi7ysNy9bqR1pQdM
	 j1Oj085sp4yrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C49EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 06:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168689694880.15683.9828425622234544944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b750b44afc26efc62aac659c45fa9c3b34660cee6b0609c27168db32fbcaffd
Date: Fri, 16 Jun 2023 06:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686896948
