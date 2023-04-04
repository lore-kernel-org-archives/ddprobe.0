Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D667C
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 10:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E91A6C433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 10:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680605825;
	bh=t515gDBbNqsgO3wkXrXbfCK8wOWId5WxkXcrABzzLiY=;
	h=To:Subject:From:Date:From;
	b=EHYGQ2EEVfySAdYNk1l++3q5zRCBzsF3woLQ1BxdyYnRF4azkyl/myNR2o3l5UJul
	 2EbprbEj3hnu3hGdkVzZNKN8K8BwTZ8AEtaCLHp6i29DVl8gpiG0qWDx1QJGrx5lka
	 WGN+C1nlekBLL6a3Md2hWWqz/e6fqjDjHyVS33gFYlg1yCNg7MxdQ0dfvWcN9k1bRL
	 WK/91+WfB7z8cY0dwdOaxFKgdc9iqJTBbuSHh+fblZgqLKq4PSN0jhrBLDh/2MjqXG
	 /HqfpNq5fIKOY5wocmeRo8zja3nH1b1cSn8ovEP7kN0bzimlQLjQLxe7gIa4uD9jtW
	 vzxQg6uojNESQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DA1C6FD1D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 10:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168060582577.5708.5612777809012652489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18df19e27dafa1a52d52c12cb899406fbe9147700fd416a318cbe2655fc06641
Date: Tue, 04 Apr 2023 10:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680605825
