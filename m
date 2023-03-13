Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD4315A6
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 02:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB229C433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 02:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678673225;
	bh=i7wXCRipfBrbN6B8bosOzFfLh1HVs7coxDslpnASSTU=;
	h=To:Subject:From:Date:From;
	b=lJxMjDiWG0Q4QLg9A4S+7DE7pzASq5LaRpOkq/vEIocY5sRhjvTK3ycHAzT/f3XyV
	 aV3PWfFrtos2alZNqHfRv6ytwiRt4fdTZqn5Nn3+ohydc0u8GUrlB1DNwTqAs3y30r
	 zule1TeSJVzY+Aac/o+/8+u5Dq40YmUYsxDM/2JjNhgScNgt+2oeF00dXMDZu/52wW
	 cBsKUaPudz7QIoNfaQIKyUI2ZGsbUVTrTvUS09vevpBT1ti5sCkm9JJL/nc3QuKRan
	 DRHUAegztMypr3NZrDScfIJnLgduGnSpXqpKB3ju2W4VqDAHIFEgwsmO76tHBFGuM6
	 2ra2bsxhixL5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEB9C6FD1C
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 02:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167867322577.5003.9825821341963491536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 616f873470b2254fcbfe33e5bf262525b18e8b94e89f07ece29e0ad1eb9c8618
Date: Mon, 13 Mar 2023 02:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678673225
