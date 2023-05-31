Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D946186B
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 04:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1CEC4339B
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 04:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685506445;
	bh=eP0PihhxXJJJp+e7zLE1H7qLodsNqPAJUVEWcIA19a4=;
	h=To:Subject:From:Date:From;
	b=f10N8Fr0cqmM5pcDfJ6Vz84cspwyMRjN2Y/9jFNUuUk72MPV2uRtjrmUA2dX8SWxT
	 AHhbFRhlevgJNksSauZATs9wXZwEP66mwGjgKfF7lhipIoijF3W48g7ElJr2AESA27
	 ZjMLHefFkXxwbb94Ii3vHhIb2PWrZpP5paBsgaP1q4BqMvRwqLE+fwiq33iHx4JvLA
	 IyE2ZFgp8ib6zuR2ZLdlGNJQy1B2DFNMOwj/y/LIKYhEajA4cRyr1zUWvAOM6AaFmS
	 Nfb+Cv7uRq5oN2ZuKpFvpvAtltdmMAW+zZANVevhbPYdQvka6fQJUYT0PPVPSre7ts
	 G73PxMzf24LQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE4EEC77B73
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 04:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168550644575.22715.241542821581594633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 195126f6a03054218c734c46cc5a50a9579579fa78d5640336deb61e09fd1823
Date: Wed, 31 May 2023 04:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685506445
