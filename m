Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27FE320E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 13:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BE47C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672667487;
	bh=hSG0pfVOvTuK7NRa3snduOoiNIYb0JQ9JM1QKe8VIEE=;
	h=To:Subject:From:Date:From;
	b=A+JNPb2LsUN/bmRoNWLZt7yRzV44wN3Xxml/JRVW3702y4xyio65bQVUtJVLzBzXH
	 WT3BrXMHWKzhH0169OJXC8wWCS9z89jRRwWSXUjFCskUTYuN465X8FGF/WF1Vf0SVW
	 kubrWroK+uqEJr8KTqXq9V0JYa9BBshxsRiePc3pCzn6thYTeLJTNXbaxt2yoTGOl+
	 P7BvdyHvFzPEv/+P1oDJfC0OpsXxaGhUf2bUI/ExIT6So0t02SF4a2E9BCtFRxYlIf
	 WlXiixZv4zyc6GHUmty4r5jFHwr5wIlNx+BBVfmWDaw4ayweq3TwVR4QkHjuaVqA0w
	 WHRZpFJFeQJrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E672C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 13:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167266748744.25870.539260072527160457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7009fff0ff492c992091b67c5cff36f0577f61268ce722fb24f0a0f668605c8
Date: Mon, 02 Jan 2023 13:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672667487
