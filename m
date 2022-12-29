Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA733FE1
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87DEFC433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672322487;
	bh=/r5ArmgXbJkzjGbKfSZQAjh3yB18tcdNCN8aLKkPRGE=;
	h=To:Subject:From:Date:From;
	b=V/7YQFm0Z+7m1XicLloKFBb8DWsPxfjJTUpofR7h418ok2JFpFo7n3jj+QUPoxez3
	 nue0jzywlQSEIIYtVsM+4ImAYmlBjQIeKopMHjQIqnhDY3TZtTTy/eV3fMRkChhEUo
	 qD/GG8dO3qODcf07EBXznRFcwx4BUBl9q3SL4Qe7sAh4fZ8aC0i1V2/k5+fzVbsEuo
	 U/CzeZObKqNb0ginXp3tv9sNaieZV1YZSO/bJdyXMFF0niUPAB5c9ojf84wri8aKib
	 ClQmkbr/FFNIpOGdL90jfQgc5WwLkIljbyPP9jDrHT4/1ROxxfeZngCzAj6DtDFv7D
	 pMJgbMNKy3J8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70176C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167232248745.15553.981446636611754437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f876be27759d9b438256799834b71f88791cf90f106640105528b1cd1857032
Date: Thu, 29 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672322487
