Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03007E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72769C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662351653;
	bh=DMNA7VRzgu4Z0aWmOkOJcTGw99+2OgQCVKp0Wv4eHn4=;
	h=To:Subject:From:Date:From;
	b=Hp94cFmrWyCA4po+q4WhyjWCpwkrvZiBZRURdkG9CIBzLIqIk12YLuPf3SS+zFCjw
	 YjVnpBTL+a6HJYq5MvfDQcwU95N3pJRGjfDpSYI0Nu5LW0ppaa2sRtB11OUiWyzUia
	 HwAOGzjDPEjxBoPP0FzQvLQ9/S9bUKIuHU/EdBmi2lfSHaJqboNBcxCbBBQFC8JQqy
	 463oTqF4L0ww5/z+2OFHHl21bH9zfaNbGwyF/SUmAH0xOVvZANZJZXNbMFYEovX/D9
	 +tAAIDSxYDIJqDlD2x6h9DIW8DXHctIYBqWYZLIt4QXjfrfJjPdlF3OCTpFFJ3qGBD
	 9W/a32rQL+FEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5590AECAAA1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166235165334.1576.8643181874413644037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 837bf96a39154db203b62e6aa04e96a97b1da04fcd38d244615630822fa3d0fc
Date: Mon, 05 Sep 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662351653
