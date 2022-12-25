Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6AB27B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80479C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671938487;
	bh=vDZ7B3/pzH6NcGm0S6B7ExUUJrBGHltOFHw+9pXlwJE=;
	h=To:Subject:From:Date:From;
	b=ghblsFpqHfpeKq1sIk3jXY1+L8SVyT0ChylwwPv0Zyi3WX/fQXBTGwZB7G51bfrQP
	 3wm3oIpP/jmPf6qVhH058PT/g1lUn+xP/ks/Gi1g0wYDHCHg/dt/4gScVD3YNRGze+
	 b/Wdzj4Qyu3r9vFc46aY6md8IbFw0SUW+lB40n4rrst8Ut6EX/4+wiWsDGfoK5ZcOx
	 47njQDtQlaTbqyfwWbTtyMfHq1pFsJXoPJto/tGflG2WRskGLu9YfZOcirpRc/4tZ1
	 TgmsBb2x93ko7rAgSArZr0pl5u8ScX761xPrLTF2Gz+s3ED57G4TApouy2MAWRzKKM
	 zpAhDJdmlU9Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65499C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167193848738.5405.10983401925365010861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c8d5fcf12c4c5b69e8a1ab763413e8418773e40c5474859abe87859c6a4acf9
Date: Sun, 25 Dec 2022 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671938487
