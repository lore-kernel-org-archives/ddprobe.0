Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD86361
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 02:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B37C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 02:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696040168;
	bh=GBFWsPbOaaPU8JsTPBPYNO+IP+TQwBETCV6NOLHwIG8=;
	h=To:Subject:From:Date:From;
	b=suP0/aYBvQS1/mXMCvstryHfaDztDXnSwFVNwfsef3Gl4/fQjjPefvh6NGwd2yQtp
	 CD1ajF3fEO8gVcsixF3qlhnDLw91il+BsfCJbhyyFncJ4AE+p9zvsWtY8kRx8AqKtq
	 QJqNep967f1OHqrOl8KxuccIwGW+vpk3yIIxRlOpDVmYWL4jmH/0zdHh7hxHeWQ6KK
	 Sj4Vqjok7eGK2ukB6f0DrGTVw7e4gdBndjppSuigu2pKH8rinmiNZQTtiAwIkAKHrV
	 9cQPGrYOzDBiuwhdfWIJtHZI/OOkBD/1AbJjoAQ4m1mFP1LOQjH/8cvPE6kSQgI1rs
	 wwFS4F8FMlSkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAFDE7734D
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 02:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169604016868.15848.13824486994359889640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dea907e9ba6bec8329e27a3eb48162e4d22105d8e98482f9edeca59467cacf1
Date: Sat, 30 Sep 2023 02:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696040168
