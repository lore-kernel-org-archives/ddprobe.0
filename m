Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E42579F6
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 19:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA98C433EF
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 19:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684007885;
	bh=j6sYaHtxeH0Ng8jtSjm4385uOiBjPbZ12pfsRSo7bxk=;
	h=To:Subject:From:Date:From;
	b=t1z6WQf++ts8HTir2dkjGrHFrYVJlS0S/lh3PpIXLviaPTTgK0lcmJsB6mTY2FXgW
	 wBwH9r42pqoLX71/mVBe07Ffhz4vFidD2Q3vfeSdcmZvUmEI+ZvWfuOLbcBwy1a5w7
	 b5uED88iyTiThCX0d99cbJlBWlIv17RCWzHi/BFeEejiPHfl1CiQveOINBFne0ccx9
	 zzzt4c2/3WPo3Z03Gg1JRaHncQm4M/6VIHqKa1AjAYG5P4iNCVxhWg5hI066gQxmz4
	 /ROAmPLQFvcW2bW17T9ifU/uFBehYZcqETGSU8LMnvMRgE7U/8Ajd3vjBlNppbZ/bm
	 Uh0oWIgJ5+xmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF85C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 19:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168400788575.26886.2499526531241069304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a06779be3cc01c42e3f39f7a2a09cd77ed716dcac454bf37fc3e332663a575c
Date: Sat, 13 May 2023 19:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684007885
