Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADF56652
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 684F2C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661924453;
	bh=3jJ9i819XZF+DDn2KRqEZ1Zj3HNoLfpp9JRP5CP+b54=;
	h=To:Subject:From:Date:From;
	b=R8ehtfF6bUBYb0y1aKbbVUtWUuD8qZ942a1TA3eLdCtpnW54fYhb2ZUplRejkDKE5
	 fD0OvE304GmlaNhig22DkErG+5LZ3dhKNHuCsfEt7U13LlxlIVC4bE8NEKMQXddSRn
	 uQZpMNE9N+x+EiPALjQEV03dSFcMD16ztflKwxc7bWL/QMifFJqz8kPmsBN4x+xDZv
	 lSRMhwhsMcwNUZDn8EWdJBPgWoLsamFEopXytkR3MQX0/ly7/K9IwoEFkjyQLjaizg
	 1OWCZIOf1QemQi2c8PoP1ZOl2hiKfIb76s8IUgEngr09jIVZV2l6QbnPrA2Umqmy0C
	 ALUQlKwpDXSlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F971ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166192445331.16548.16360752602626861776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aa7d502a43bf5349150c1e8a3851412472b24327c3a56f83e27409ac520a3aa
Date: Wed, 31 Aug 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661924453
