Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B90671F
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7764AC433B5
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663110653;
	bh=Sx8WiAVRFCT6aJd8WBirr5vbAIsB9c5k+DPfqE1el0E=;
	h=To:Subject:From:Date:From;
	b=sqRu1QzlgJHiElCQ5kpquQHvwjtfO3T51w2zDrvKxOe2xIxnE8Gg96sGCoMl7J6Vm
	 dsCIasS5fzaHd5KnbeMJ5T4q7zSeqtavDdP9rKWmT4+SMhBpxzY6IlXw1o3YEAIE5+
	 M+vWblMHiU5hBasGqxvKO0OB5UzAU/6FXWROHVsdoO4teJpr8kxAWkRmk2izm37Sci
	 QBcaJRfWLB08AtrdE843823Urbv9GiSsJbApM5Az8Jdmq4Z5GElJ2V/uWw0aQhKZrA
	 YmIMUF4JF6DpKBKQOqfXkkJU42aS4vHJIr8Xppm8os3MMGfgtyYbOVvTafa0EOMv5d
	 cOG0vlWZxwD6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C29EECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166311065334.28772.420295785700862156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec509da71fe3eb57af68dcb072f9dc353d2e575a9dc80101f6913a035fc5053
Date: Tue, 13 Sep 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663110653
