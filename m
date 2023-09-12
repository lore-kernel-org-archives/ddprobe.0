Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71AFCA31
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 14:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0AAAC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 14:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694529848;
	bh=48H/oQGXm58lH7tvUXKF/I0qSBbvHlOsAkvZRoQcgZk=;
	h=To:Subject:From:Date:From;
	b=MYt6YGKC0PxW7598BpZQoXpTjJE1E0Cy6fhUjNmKLpalBCKkbVthHN1A4AtLevTq/
	 Ymqf8XH4se7MyLXM0icNjQQKuIdkwlnAQ2X03c3Y5q52CcF3OHRudjn3s+eYgMzUE6
	 Qhpu97VwWbtUhwIMpS+VWhFnNMrve+UmDoWbasfdlAnQbTRprQnUfcTt6ZxqZbdyfK
	 6jlt8SDvF7S8YB3wQYd+ja/B3i5OHH5D6Pg1W8U3b9B/kTwhSfg4CfjMpNhFeK8T3N
	 aCwcbW5rlNBrMdN2hmhW/mkrDOc/9mtMnRNAqkt63iR4Gu86LdZK7YNgthmIr7TAV3
	 HNs4U5gm5h9ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAAC5CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 14:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169452984872.12507.17235551230130747722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 854d6075bec405135840aca15f8535463988f7766b01d2c23406b87f0ae0920c
Date: Tue, 12 Sep 2023 14:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694529848
