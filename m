Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321927E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 15:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD50AC4339C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 15:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674315125;
	bh=jvz15mZejbOHETBEMxOWKpmQTp+Hkbq+n0A01kI3iWY=;
	h=To:Subject:From:Date:From;
	b=vCzKWtGgxqN9mYTST+mCDWkay+4TeEJVi2RPHkQH0w7j6K9gssXGpRfIAI+aWW1oD
	 Nu81xoFRVQssKgfUljux/3nz0+AH914Gl4dXQ2Hoq1MCh/JChaxYRsRlbpX4W3PSlO
	 9VubSPsV/Rs8gu1zjZQvn79uEO87e/pLi5fjcu0oVMyl37OVpmvYdKLY6Vl2jhyzwQ
	 0Hx1ghWWLSii+nzyhAqBb8Z1B7Cuobey12q/Ges74+x/MTCMRZKYl3jJjIS2dMQJPO
	 1dDdc8eWpf5xs44t5GGEBOWQmtv5Xfru2yQfh4bWtNRPcEtZSwdhFsXRQrzIyD2WUR
	 Qpb/U8EHPsjPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B965DC004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 15:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167431512575.6204.5077353469320253290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093fd15554cb8895bcd3d7218acdd2540b5fbf803765dab21d66398a94f4fbde
Date: Sat, 21 Jan 2023 15:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674315125
