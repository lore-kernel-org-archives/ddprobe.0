Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13602109
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 831BFC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671924687;
	bh=SUMUcp+XT+ZLd/Voj7kTjXOBf5wcXkYn0mAtFtatbJ0=;
	h=To:Subject:From:Date:From;
	b=W3PUqD9PqqtoMnnmS9RqDQS4ZIHhoNhSqEtl7aTW4F0oWcG76k5/SDLuYF1eZR5w0
	 eHeoK28vAGgeHb5Cf9W+YzHAD983fzvunKWEFoc9ETrny9nRjE0p+SSWvJD0jVqN9K
	 Ey4r4V5WfuV0xEzIXactjlqcOe1k5zWYAy6GUvM7hYZlqdr9DVGX98/dEpeQ2wwMpP
	 UAMf3Zo21rk7yof6exiLKrd6swSavxwNAJaxSfaAx408n6iJnbt9gWXCTg6tfcX3SO
	 tFl+Eg3H9G3rm0WlLHD2LUnSgDoAoyWRurcdclhfeB1IECuxg6Bp6u59QjNwcV9ve2
	 VZmliMzp70Z2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F04C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167192468740.9796.12332130360689914796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae0eca7f92f1ae5b712dee93ea8d346625b552821a90f996b8f10c759808c99
Date: Sat, 24 Dec 2022 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671924687
