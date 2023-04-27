Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661D323D5
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 16:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F2B9C433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 16:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682614326;
	bh=ECA9aDEp4f+Y2+h1rnf+/B4VYVzzZ+mj8Ro0sJgP4gw=;
	h=To:Subject:From:Date:From;
	b=ApnA7S6wutL5ZZzFbxZxKY8oR+e/o7aeqMVGbsU++RfxA4ro2DeXs0VYmfo+CN2hq
	 303ssT8YExWnZZ3r5aiMxsQKgDHBJPf1rx1HqBDawTXmQlQ1IY8ae7P2kRojRS2/B7
	 VuyB23Qo2WvXfyC5gMFOTqsv4fqGIgkW7bNn1o5sEPTfxlf9Xk2ApiTiTLQ8qn0rd1
	 fVHuavXM61GujLG4IU4jPuBv0MjqqAt9GAf+pcccXQ/Gug8ALUYdIkJJHourBZdXjA
	 ilpdfjuQcMvKij/bRued5dDfyLo5ADPz9c9uWZZCXjnUYCzyDcp+ygBaXPQYSLbrnt
	 5iSN2fb5eUMeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2DCFC77B61
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 16:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168261432577.6557.4567903829846410542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25d27b3355f333d8c10eb733c1500be0cb756d58f5d89dfb98a8833ad4c176d0
Date: Thu, 27 Apr 2023 16:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682614325
