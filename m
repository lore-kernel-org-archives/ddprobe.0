Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB8077F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69529C433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669402854;
	bh=uhxqYl5nEztTxiI04OhVqqLAE451odswDq+ZwQVqvE0=;
	h=To:Subject:From:Date:From;
	b=g2qWvzUTr/dq+CMteDfML8KvhmZ/2O6W0FZGB0EvHVL7XewTFw7Z7x8V1MCF1u60j
	 31viA91BpcatxRh+vr1ezWq0k0bs+6dJM5ADSbYqk/xEY4qffub4C7IOKlz+t9oxad
	 OF655DijV9f/gf4ne3WngkJxBBnqjTRxMG71c7ZlsGFNPac6VrTmKZ5Jd9EwkceWJc
	 D+RJLrVzU65xLlNzFgDZOsovTKoJPjcAAdW+xgWMEmVMwk2d+wQ+SQD2vV755nUFk4
	 lv4oNdBI/DeWI7nzIWTzOQLHkZM2wVclnKkXas6ktICbYFviWRInSDTQC9ToeM8SGU
	 PBBBn0YVqSXFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C7CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166940285433.19715.14230406508545398809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6853271cf91f33be056bc0a5703c985b270302fee24c5dfd6d16735cde564885
Date: Fri, 25 Nov 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669402854
