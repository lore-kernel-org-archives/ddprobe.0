Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE287C
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 02:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D47C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 02:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661826052;
	bh=vJCG/8Rsu4MkwkKlJqDvCLI8uNHoZmnObe5lhSZ42tk=;
	h=To:Subject:From:Date:From;
	b=Xu7MwI/dhjrIJNSwfCNfv+TryLXmRfOwRDlve5LuP9adCq4L8GVXTDpAnnXkxHMJ3
	 7Z0p19H7ve7FTqnNzNMjOiZV+uHAsT6o32cCexKOsEz06W2PIylv0Q05YuDkzOguDT
	 t8PvG/PPtoScDsCxYncPQiFFrsLIt3yaPOlj+g0mkIhYwXvLRrpqV9wx+/eFlu7qGX
	 u0r/H43H7aAYfgTkEkwvegjlgXgmLs/GwfrGUSKQqZNkeqygeo6GuUr2r865yZ/pf5
	 1gGJ0JMF3sgXSMzYJf0VVIhakW8o559xjaJWA3rM2sy0wkMDX8K0Y+7jbFKjn5HcC0
	 mNYSUgdUSXo2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B7C5ECAAD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 02:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166182605236.13701.14183590531899381340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d88ec0eb968d32782fdead6de04c773a917b6fc134eb56056cab6556a9886d2e
Date: Tue, 30 Aug 2022 02:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661826052
