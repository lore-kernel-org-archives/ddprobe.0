Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2CB47B
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 22:10:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69142C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667340655;
	bh=EK0ddl1ecGCBeSMcRTGH1+LvCbMJ9VguSnrbeDbWlrc=;
	h=To:Subject:From:Date:From;
	b=eB7TnHSjjOi2SQ9AhN7IirrBHz06WlPq+SSb8q8AEYvKVo2wXVQpOge3Y2NMENvFV
	 WGkDJ6YwkMBHnwfcfEdZy3ceGt4rtluCqT/WSgOSfo/qT/WeZiputmbdt0BXUyATKy
	 0cS9ALVUvOWdorDZ3w82AipVksQg9D+JiV15g5dtemL+C+FjMs4ICr/NWaMBvBLTyd
	 Kzamxyk9S6EzkyywNkcMlDl+SQA7qT68rDY7L5NVj7mWit1b9EoNTRG0Hy00fxuW4m
	 jUBVS8RPFluL9vGG9+rjUfB4Q8ZLn5XqWC7RR1AOlfBhqLCMOOTzEJh/eHinhshkI6
	 HjWMqMJyrG+Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F02EC433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166734065431.11222.17726505475638622352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4024b5901510e05371b59e0f03d9baa73a615752a62097f8f06e111750aa1237
Date: Tue, 01 Nov 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667340654
