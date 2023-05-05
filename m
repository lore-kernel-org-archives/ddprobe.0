Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E5C1859
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 03:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D679C433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 03:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683258366;
	bh=UpEguH3tXrZELwlOwuFuXL7fs3wMuf67ZQ9ci5DdwgU=;
	h=To:Subject:From:Date:From;
	b=GalkHztj61Cj7FXpD8yBWE05TYMAIaxNYgoZpGE1+79aVP0EadH4jtnAF0OfvaGM6
	 Sx/5e0DhX+kC03jXYGQc+3a9RidPcHgzBGLR8ytCPzA3o5IPK0SDnQZVml7+ydF8hP
	 waumiaAUK8Klawl3GoyHxQ89XwoiSuc84AGQHrSt7Qu+cCkytkBVomITTEcp/QUY1U
	 QAkHLIe/isflnuT/6UFbVYBB73xuTfHhQ32NOSpmZPhj74AOqs9147UUnnLs7pVBr8
	 OqdKjbmyD70q45yb571HJGmLelJGhAY4pYw4C37C96qkM4Fr9PMaUkcBxenNtTOZ6H
	 XBg0UJNXrvtgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9F81C7EE21
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 03:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168325836588.6764.14894366379446201895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473fc302954effbff24c3d3e0c528c8412f527a8fa591fdf5ae70259c2417ad4
Date: Fri, 05 May 2023 03:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683258365
