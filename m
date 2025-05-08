Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F213EEAA
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746709794; cv=none; b=Ac1etftEN3X/lj/QZBr+HJpHdS0smDQ7Wr2VlTDUtqKawzg0NZh+UWErus+6Vl9c9rFHKGD7S5kDEu6TUeqNe/spLwJVhMw8D0oQyF4HrrorH3o9RuTa0bohZSkFJhe1aKNduPM4x3LbIE779i//SVB9KXjaIxBbGL5Zxs4kjA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746709794; c=relaxed/simple;
	bh=TNFsUauk66XsK3W2RaInZJGMKu08Zw+BmcuEf/kbWt4=;
	h=To:Subject:From:Message-Id:Date; b=ZKfr7xXmli8AEoM48+sxCBOa2I4eQIjzHBdd2hnZjXmT6zr3jmWSBQ1gg+UaC3WMLrUg9hpvnnV3oBa1T2Ce7VddKIuelQG9ljsT7MVNHSPcyt43M53LSSN0KHbqxSZBcxGkEYVjtgF/9lTb1qe0JxzX7z8M69bJNuT0CGNbgh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=teiPbtFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="teiPbtFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1C6C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746709793;
	bh=TNFsUauk66XsK3W2RaInZJGMKu08Zw+BmcuEf/kbWt4=;
	h=To:Subject:From:Date:From;
	b=teiPbtFBPV99YtnnbmNSTomzaOzYwjKkDOKpFG+RnpaL/WhR1pcrS3f+RHuAsniai
	 HSUrP7QOFmvtj8owuh/LJq5Rv3+9P14+nE5BcMtACQF6f+vk/3YmSYoI3wIN6SeQ/O
	 UiclnNfV7V3HPH8Y17myQgKi0p93azWFiI8hM9W0PlXbB14sQfk2zexm8kc92o1RW8
	 nqofLDLgpPqpYnfMFDHkHFgcYIXNl0/9KW7kbBgPHNPlQjWtioiK0Kn2iXkjfCMZHN
	 /HSAlGt4dryY02KPksYs54gRtRW3dU+vFzWPSNELluEN8mOXB8NNOQPX2fqzY/KYSC
	 lgEy9ojiE1OFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2BFC3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174670979357.25720.1209590622909283736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ecb410bf84b5ec36a7de270f468c84aaf19319eb206f98e0310f48774441424
Date: Thu, 08 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746709793
