Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE21AA28
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A185C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665123653;
	bh=dz/2pm36HeWQTOB/EmyZ+mvES3nGSJeL5XCZDOZkB8I=;
	h=To:Subject:From:Date:From;
	b=jvQNV1aDB0610NMQt2gum80UfKZoRFNbgJdWwywe6lbn0hSc2CH8ykEvbGTrcsbD0
	 5gK2WE1PftOnE8XzO6pO1ymVQcxsuAQn44eQ3KmrAeCWimR86j6zCkjQECX7VIMdfj
	 JNHp8byOM3UM8W9nXUz9lCVplymzSNG5gk9dZO5cP8NG31wZVc3L8zDyQ/qt+/jcW1
	 bPQ3Vk1Mo0hzN32+glxODKL276tB7lnwUieCAMtwU24cZJ3fOQsz7udlDPgep2xC0U
	 Dz948FSUbV+38Clu+41ooTqWLob7SJhqDcX1iyXv0S+d2HJEP+2BNA7g1likS/PF2a
	 KQtQbVLRCBucQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DD9FC433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166512365335.4885.3953656054631682526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f70a4345c1e537d39aa8c2b3cba3902dc8b403c62faafa4d835da95bbb4820
Date: Fri, 07 Oct 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665123653
