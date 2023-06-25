Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFA27F
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 02:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D398CC433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 02:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687659788;
	bh=t8jZzGsZOrnlyUsldGStb9jYha7WCgmICjOpkM3TmZk=;
	h=To:Subject:From:Date:From;
	b=ZbaoVhXmnipLkm34HlO/jfmQlz+0s2Biqf0Fj/sRt6FCP9NjXh8fou152Er1TZu1y
	 n59PE4PlQ17BDWzHgo7lXUZGrxfHzP7YF/huq+DJ/bEgdBWKXZZ7gm6G5VBDUvdp0P
	 IVL9X8k/HHH/4BMRxWfAj4D8f/aoaH7Pqdr3Sa/KFbG8/VGpvt8Gv0Mb+1Gl4taSMI
	 /TiuzrWoOnS6Gkna/YK5pu/IBG6D+39+ulNVy+EFWqYaU4zR1X7oQ2dMlN5qoKi0yA
	 gAfr8HRWkpAC4kjJYvIdyqjnP9i+bPWdv58UwphYxtUbA9uAUpWJ5s17tWV255XBXj
	 9bYOSxebSBcxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC013EB64DA
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 02:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168765978869.17948.11375428554669758744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9689e52cac5f1ffb776663920b17f33e26259729d259ff927f7f5216cc4c021a
Date: Sun, 25 Jun 2023 02:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687659788
