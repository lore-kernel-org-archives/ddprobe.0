Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1E81841
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 09:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F184C433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 09:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680945666;
	bh=sprOui1NWJGBGae1iOq6wk24C37DbjWHciFt/4cBzZs=;
	h=To:Subject:From:Date:From;
	b=RzvFykVwaviyEnP2JUhEd2KQE+wbZLdkBTYRfLycBgDOvB7csNEXzxpsl9aUJRUpN
	 Jgdq3/cTvza5qkzZ4p6E6wZRzaOmUTteIc5alB+ivNz/VF1QfKw7TIFD3/gni/aSgZ
	 x74dVk9aUW5Kqvo/cYiPoMIPwrPOH8F8KYvj/cxhRmQg7gbDdhaVArtNJOwCBTgoRe
	 /l1+oVpOWNHdQBudJQXhijsVweioz8PWa3R28XD3ZM1gLUfePged+pnOo1CipEwqRL
	 sM2R2ZxMQo9uXIJdDdQE8rjzw6AqTpOPFqDP8AAyFXjLdmisQ6pxMc0i7xew4zMZ5U
	 wsGCpWkq9m4pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3534C7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 09:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168094566592.18357.4498461558455784298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d759c3e717ceb219def2be0f901087450e4bbbe2a4ca32fb98f1b120034c169b
Date: Sat, 08 Apr 2023 09:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680945665
