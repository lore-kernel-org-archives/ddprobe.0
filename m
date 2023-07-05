Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F83F79EA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 14:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84FAC433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 14:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688566628;
	bh=Ee/w3kCh7RLYLBonmnFKTWKDt2K1jESxxJbgkE+tqGU=;
	h=To:Subject:From:Date:From;
	b=HHI8f+C/sSMDafmoxkry4GrS7fQ9mTCx8VpTfislrakv6kJIEDC0A8DJKZrrPlLqM
	 sZYCIRVR25OunZBjxRw2b/u49HF+yZEFytdXh6f35O+C9NqKCvzhpAAolSsGNS1tkv
	 VD7ojjuwg9RQedB/u6EEgvWyea1lFM2IqYCUFuEEDJm00ela7gJtgV1OSNTr6qbWlz
	 iVWwe//cQR6fG7wkMjVzf3I7RCA93HDgmTawV10zAdDk7wlrkhJ3qRr3Cs5PjOs17i
	 X2Jw4tVfgk+0x02Xi5ZjArddWfKohgi1rbyG4GCABj/P8CgedtAhO5M7Ii3gB0N1Am
	 qcirykYOdjhRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF40EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 14:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168856662869.15911.6274310252701323565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9242be6967f03866cdb47ebc020a8dc7d04f3f5b0d7535e13508f8e3ea4542f5
Date: Wed, 05 Jul 2023 14:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688566628
