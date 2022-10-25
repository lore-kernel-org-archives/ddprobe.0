Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B91BA7E2
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 680C7C433D7
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666660253;
	bh=UqPLIgcRe2DIo7e6FepuFgwapdagjcLlLzK0L0tcvGo=;
	h=To:Subject:From:Date:From;
	b=VH/86GwgoNkG27SwswNIj5w4pxyFch6jCYjLP/xm0FU5cYCacEU1hl2o9OOEgG/ol
	 lmAhmcVb2FZUvksOgWRer4sFtSmnHwDVBw4NTtMbCtN8IU/4dL4gJbCMQB+qvn9kXy
	 Ub340ihNhzB26jfFC0JbLH1kRzeD1i+GrzSLfDzygrr32l3cgP+TrHkYNHXgk976Ot
	 ErkNJhL3qcubuQ477aI++ohLjzUO6yaA5v5BA47kdFPx++LW7L/6X+dSCkVahznwxH
	 ojTDZ9J+TSG3P/HaaITuWLvkiMhSStksSgSmZy8a1tsS0QApC/6LAy6ZcFNZtNyL1k
	 sw/8XnGYEp/Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F675FA373D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166666025331.24437.9397720127432474798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72376907cd0613e278efc4533c87ddac45c0458c84c61428674d544219843d08
Date: Tue, 25 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666660253
