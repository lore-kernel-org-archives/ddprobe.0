Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF86C10EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81633C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671483087;
	bh=xQLrngwB1eainpGkneaDvoB7Z/dWu2rCBRmFHKZbC38=;
	h=To:Subject:From:Date:From;
	b=uzfBIT1cdKPzHoQInfaKiZ0KPy7kGAhntig+UIDppRtskHj9XHbfzp+KbmbsDmpVN
	 G1ub8od+QvoeQBWC5loHJP7meOV49vn5akNL38TXKhjZtc2vbbEiC1el0Ep1CUEGgq
	 HONXX/a8Wfj/KzEKKXhV+2k7JQ9edI/E/Aj/6/H0wuj+bqqpRBn0JarzLa9M27mrsm
	 NmwDmv7MoWXvlYylpGwzns7OMrQ3MPik/9MtO4Yh64T90YEVYw/kTKnNLnrbnGugos
	 2UhtbUK/vxFY8sl39UsfZ2rB3THF0A0xWKi2axw7vPnpcTGK8l/Oat/WsEE+hO2RJF
	 b0udXQyvCEbqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C96BC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167148308743.31904.12204618473809962217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86b83a6f32d9b32fca5d60d0c8fa08e703a4914f6af0aef7bc7382d805bd9179
Date: Mon, 19 Dec 2022 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671483087
