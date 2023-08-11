Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E87F329D4
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 23:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C5CC433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 23:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691796788;
	bh=OI0/ygDJ5uJ2F6hMI8J6YcbFNnIMNHOftXakrRP9FT8=;
	h=To:Subject:From:Date:From;
	b=TWr8LULa3aQdMwveKk9/7tSHjZvQyU/Tmnb9DMoz5p6d1tp9Oh/Be6AbQL54z9lh3
	 Yeuv8vs6O5YI8gU5OuvYT+pCqqbLigtf+JEdq+0aGY3wMtLEO8AkxukDpfXaZ1xSRl
	 Xn9WJNDunkamr+cJNoESg3DaLghR17++2QBxeLehEOmEdfmWx+ngydUlfk/fXUckxY
	 YhzWbl7EdamzzLqD8fIGKJ92MRE7oL/lMwJf8pas+xdfONYaB8v3COlZHfzI1vidM6
	 H+DpMoCHZwB3mjK34fSPADuUZW8t5EAwdFK26+XY66MgjRomWK2SjgZ5nJttG7v9va
	 PjhePo5LFdLtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BB8C001DB
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 23:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169179678871.6815.676911071584934777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd793b667820a6449985ae1bc837a0239e440b685d524aa7745cf1343e925618
Date: Fri, 11 Aug 2023 23:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691796788
