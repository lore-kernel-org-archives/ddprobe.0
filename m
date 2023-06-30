Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B49D17EC
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 04:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D096EC433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 04:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688098388;
	bh=vRMhUdqUatO3MFZgw1X/hDQ3hopf5kXeieZ3LiHR+Xs=;
	h=To:Subject:From:Date:From;
	b=My46CeY2xWx+mOpQ4j1TdPXFxZu1+bU9v1Km4BEbiRh9Xa0mRRwsjJsjUdpALRI/2
	 7pyx25iOWxXO/y1ePuTrVMKndGjfKqRJLwcfVBFuTqGdm5KDyPELcoH+sQmDXra10S
	 XdDWQrOqpmGWZhVRKvLaqYsEnHr0R5b9md0s2pi46iik5QCwHrZT3X3mfgqw1TGvff
	 YTUCbcxI9/g0vrcT3MoVbXHxfc2D40ojqHUXARcwcOOelfA5FiwfoVFCqZtYFLtECX
	 XwFW829mDzhIbWeI9FYf+kWq6ezXgKaubYKpyFyHuPlhYoH9lh2GQY1fvB2jmIeTh5
	 YaebPQ5FKB2MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF06EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 04:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168809838870.8023.11960343800158793544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 012444d252a30789a3f26b9284d4bfe943053dcff9ee6c51b725a49e413a1537
Date: Fri, 30 Jun 2023 04:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688098388
