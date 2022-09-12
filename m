Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFFF17F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7116AC433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662958253;
	bh=qIsVWIexrt2rFw5+pKQGLScfRDTLGog7VYHkOFtMjeA=;
	h=To:Subject:From:Date:From;
	b=SNoP7GrpWJlHOY+chySpb9n6jmRmfz++dXt+PX0LxtsSMvwjieAaam99LtqgY65Wk
	 ONKwTGGSpxav09vlS/nio439BRb4Ik0aEfhrdXC4mnyzBCzCMrQvpXkGPbqmTMDNJ2
	 eP2l2KgBoRpeKNFCQYSrXDwjxyZUZ/i8tSBVm5oKyt3KicQH9a4nqLYfm1nli0xpiU
	 ad8wuLb60zzIp8yENbki0R6VuYU2lVtnWwP/gU3DNBA3SUpIzzKHSPXfNzWpixdp9S
	 KDCaajGBDXDOzIXoIOhpb0Ae0SOh14i4YJGAi+QnurPZx1iuVE8Tmrme6KPueTfr0q
	 dDxfyNsZ8QJaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54759ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166295825331.4384.14747942524573010206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e30fa744982e16c5ff56e4e4b04354aa5a1604fecbc8a210ded9306be2db69d
Date: Mon, 12 Sep 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662958253
