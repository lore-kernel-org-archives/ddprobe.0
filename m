Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 791321378
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 13:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDD9C433C8
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 13:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690117328;
	bh=I+fGk8mZXq6zoqOU0YzG8wuSvrn8fUE8/HLyX/D/OXk=;
	h=To:Subject:From:Date:From;
	b=Nw9QU/2wYRBzLfU1sf5S4RifG9o1w+MJmMo+Qy18do9WvAIlPv8GL2kTbLoH/TOfv
	 MrpRNS5THL9HIDctqbOzu++RzA9zXqUBVAjssFNifCcJBD/dMgl0TSnteKZZnYkFkO
	 JmiVDi8dCejGz39cQWaKzMuwCsigTO/BDKKdWLtFyJKAloAgSMiZOOmZZzYqTFIsiG
	 9btH9MpuS6omfqvBxchdlPlt6GMCug9szztj8XE6XmODqZ2AeH8dJYeqsmmNNjyrcc
	 7BF8ken9LtBPr+Jbvo0Ns/hj05GREY+axu2tA5pau9wuweDmD+fcox0ZvxZAiHDnZU
	 pmWx+GDjspYMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB69C001B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 13:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169011732867.31341.4087304272110816629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 928a7882aff48a2c12d0deca76c67f7c0c3aeed6c5a74a432efca048d5080533
Date: Sun, 23 Jul 2023 13:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690117328
