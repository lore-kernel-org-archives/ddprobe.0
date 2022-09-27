Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB58362
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 747B0C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664317853;
	bh=lR6MReOuL5U8p4gIYKx//8LllfOVYF3gMmIIAXWuAUA=;
	h=To:Subject:From:Date:From;
	b=DDaT8sY9FEVTJ0eXgXUTNKli0g+cYHmVU0mb4UcVwWgACZw3EyhvE6Gp18yddidin
	 vYSOCdqi9npNf4qaWWofla72bEKLd6CSreYtz13Qqr1fBhJJum9bobFrZaYYfObURw
	 56cvDQiar0+2nlXthDwXU5mlW7EhHFm6bH7FJ6a9cBTzn7ky4unXBHBNo8tG1cA7En
	 voKWLe+3g4yZzc89nAZMk77mP9Sn50FlI7vyHI0Lcqsmix1kec4/Nt8XXveJ7ccR0R
	 pUw4UV/TvptTSWPjTMZ07ie2XpSsBVz3zuH+VREWPEHLxwDSMgu5AFsspPFx9fb9Hb
	 dJDMvVcVQiNNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55744C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166431785334.4472.7870275338215287607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e234faa14ed9921c0e414c40746a853e401fc3ea5b24f56be473babf7f0108
Date: Tue, 27 Sep 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664317853
