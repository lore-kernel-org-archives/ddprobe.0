Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D5915AD
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D08FC433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667047254;
	bh=ZGmNHnsnkIwJLFh9lNoHUVtWJvPGmpR7g0aP3pYuGCI=;
	h=To:Subject:From:Date:From;
	b=NU7CXi9XlLe5pujUSSXsXTgDrZsktsouLhTE/BeRw7V/xnJJcKwlX69Et1NwhwCPU
	 k+THauQfWDn/oDIasD8F8r2LFy03tkhK8MtAsaaC6JsfDod9Ls53BENAp347ZklNJH
	 0X+WTbm1IfDalRQmxJbxfiYxSrB5mG5nb7KlYp/8gmEiDlckZTOdJ803VU2WWnrzlq
	 8m5UvongjOdHnkeIhJu+XizyTIUYAw/XNGPjcnlCO/uuriOS6bhHcRDNWEHDzRjW1I
	 PQfnDuqsQoufj4oNR11hu5qLy/El6BHH6xkyCv65EDHcWSVXdsk1yp3daZbxx4Lf5i
	 x7SFKJsv4JUIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C74C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166704725432.22326.13268354116053316625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5e9266e696dd40e6484c71ac99e7844b338e97fc9576436a9f152f468aff45
Date: Sat, 29 Oct 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667047254
