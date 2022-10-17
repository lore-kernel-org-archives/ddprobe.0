Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7E307F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA43C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666006253;
	bh=jyJf+uGu2wtl0lc+4hH8tf51jMrgluCHEU4KtO0isZU=;
	h=To:Subject:From:Date:From;
	b=e59fy5Z7pDlhfeYptpzu1vEANz6kT7OmQaByEf9VstiPb773DVEWj7XIlfRiVPhk9
	 zQHExL0MUCr3QuxoeljoV623rYhOOahcfO4vEuyELz5HKMfFzGBg/nSvLOr/Aq+HDc
	 VK7wk5Udo+cpGx/4dZQ4z/oMK4rKpct8xBveWeS6XBBrMsPlIolNNbXYpgq53UqKgQ
	 v143SV5cN9pusWw4Zsir9Ud3AETmkLpoGB5AI2YsVH7q/IdggW3afTmFuZcZqqLQ8q
	 IWMHhNNyR60OynVbXP1XBE9bhBr7JxT5QQ7i9xZy2fnxmuh7eQRyHSb6KYAxQruIrf
	 0qBpVhcXEOsDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549CBC433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166600625333.11305.313790817782638424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbaa148d9424e28b2868eb2b37be4ee410560c48847d8865173d0a6d4b88c6a
Date: Mon, 17 Oct 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666006253
