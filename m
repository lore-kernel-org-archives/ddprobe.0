Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467CB157E6B
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747366795; cv=none; b=Pi9WKWIzo/Kx3jlgjGKOjLqXKkcHJCD/c9sGBNqAuE5XrDeRaBeQfRBin5pwUk8hxGZ8aq54m3ARUydtE3RFl6SZixjy5NnYIf+ZHQDn2cdwezS6qg+ecPI/VyifN4F9coMu4I51GAVO0ChvUHg2St7A+a0coEXV7yBeCZjv0IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747366795; c=relaxed/simple;
	bh=wRP4KMAkaaEgou7KS3MfP0sTw5GBPV4suwDwrXy7qAw=;
	h=To:Subject:From:Message-Id:Date; b=M2GQDY0itLt5BYDMaa42MjCDm7YEw4GHYh2oVYyrqgbBuq9yoz8BGPxixykPo+lOtp2GmMuD2GbVm3aQZL2fqKPTSsXQcQ2d0Y5XG009NbprA2998iH2y9iKs/gxL+WeoHi2guar2NrU4qq4lvO9P+MF7yUgQES1oZSvSpLS8A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCJLq7Ue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCJLq7Ue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7767C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747366793;
	bh=wRP4KMAkaaEgou7KS3MfP0sTw5GBPV4suwDwrXy7qAw=;
	h=To:Subject:From:Date:From;
	b=bCJLq7UeqT7i9NKT8ZrSA5JMvpJe2aTDnWzCU+1ME8AW5dVThe8JI1+Y2MRp+oVVS
	 GZ+aBYidJTsZsL0HqO6wFr04lCwXR5e2iNLExXVKgrUgDF3wGrtppmOyHdNX09p5hC
	 os+P3hU/XMxTFJHFrxzQs4pMIp8ssn2WZGrgddsb6eUsCsIeeur/w2MCQ381ee1x81
	 v0TBDAydKv2+SmVH1OJbMOZvT5ylhcPCaxY/gYvfsa9q1VSzOZZq4DlXgcfmKn1rZX
	 WSJFlMxssWp4Jr6cGY0kdBtxa0RxS45asETnkjKpyV1CnXkT9XwFSfp3Erv1f8z/WS
	 mo0/6hAJqeI1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E4FC2D0CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174736679358.10774.12661595638266586250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7aee0c6c6865490030e9f8257402e1f73e55790c4760edc669a57ac13682a1f
Date: Fri, 16 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747366793
