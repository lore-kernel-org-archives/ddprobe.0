Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD84367
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 00:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB99C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 00:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677545765;
	bh=2QRdio/zGbjDc2azzDYgN08alanTVWs/fZdf6DxMn9o=;
	h=To:Subject:From:Date:From;
	b=dIiW+f27nnCoAilsGNN5qw+0c8hOaiFLMnibPAlHqnhOhbkE3P4Zt2rGOYfdSDsvP
	 tos5KpZQbn2JerLA2og3Vr5J1av4/gT+Dt4XgmgfLie/kTfTuVTjEjM30ltXymdh7I
	 hcBNtZbddbI7TjUx2wWmn6NKFPwiglzEiOT7sSHu51WDRg92CGnHx6y9RZ1Lt2lseZ
	 sOnguDNa52W9CUsxWXz0aX6sIBSgAvnUkq4dm/9Dfg/FYxLlxNSonQTtuCCoVQ9C4Q
	 F/5G2YEYUD35rb7LgJOWVebYk5wvgq/5VnJIqyPRcecwv2V0N5zjtf9HI4VHwOM/mh
	 9q5R0CH8XMq0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD47C64ED6
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 00:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167754576575.20004.1853601070140362131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d4c87bf51e7ef9f773f99fbd749f49061a3d4587ec8788432d7282782c6cbb4
Date: Tue, 28 Feb 2023 00:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677545765
