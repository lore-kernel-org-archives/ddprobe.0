Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDAEB627
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF0DC433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665022253;
	bh=CMxfKCRmdgx5kV48xL0JV35xvdRIY1PhTyRxNKQrNY8=;
	h=To:Subject:From:Date:From;
	b=qZRCzroxjLjGVmdeMZxDczXtVFGYQYSSaRrWN9A2tXO8ERT5Lhd/oclHoIJ/ufK/4
	 cyeKKvhLRVQ3/pREK6cfCtGosBYMJeqT9eaYROHZcwY5zyib8Ke+W7ECU8zL5ZQP3T
	 iyijEVxekl2X07IWFmHw+/4cBVhRJz7A+0sm8TLinuFiAOxxpemL+Y+OVS8PwgzuLN
	 vft6OrbhCsPtjd1+TRl4TQpXIpTtyRiXtLEQuS9w8Cqigg+z7q2xxtnFQVod6hM98S
	 lnQqL444O0irjCERtd0lndaKhcPaeRYu4Bhnf+amNS7idST+ioPMYYPRpEHw1kBhuS
	 JIFSd7zCXntHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E95C433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166502225334.5900.10736496582236929174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3463dc18758e0b452ba763c81e00832e4e9b011b946dae77af2e355539c24de
Date: Thu, 06 Oct 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665022253
