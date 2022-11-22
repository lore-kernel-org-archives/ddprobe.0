Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B355417CAB
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DB5CC433D7
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669161054;
	bh=D+NWsLJodsJinjpWhVKOq+ODmVW0wfUeu25FgXdy9kg=;
	h=To:Subject:From:Date:From;
	b=s+Oc7sqQUrVDnEi2/gHw0dzLxosgavD7cwUZnLEdyaLd3xIjBJFzOtFdcgn7Eduei
	 1XlxkpdTGq1K9pwl+I6g4mAkD7g/E1gwy5Cu1iYj0g7AQIQlTp4APHHyqtnQ85vxCT
	 Ly1iNokf2PwGnhswF3hdPdGRJz4KDYrYxYhu7kevBpnDOzTEgztbLCks//4kXaa/V8
	 HrqCqK6bHVGA453aMUmnO0ymvdiw+O+jCK+GQBofWjRdgJPBhk524Jl9IixCn2k4/V
	 z6sF8VungllYlvQs+xinyQ9lBaUnfoIFp627xDWm/Tz+8OOoQn2WxY091Dt1LYLsaF
	 ri7J+J3V9xQAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB0DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166916105431.21804.11839042023708280369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9561cc38fec5a888d1e0785a01386a191f4e597325204347cdc30df70eebde7a
Date: Tue, 22 Nov 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669161054
