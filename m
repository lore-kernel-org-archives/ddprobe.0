Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AB620FE
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 05:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E262CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 05:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679636405;
	bh=whJZIZYsa5VKQeqox94xD+B+efSEiMHaUu0vKCp2kDM=;
	h=To:Subject:From:Date:From;
	b=n+BYgYO+Z0FE0IakNdaKCQrGN9LL2MZXgs4rK2GBuN0b6r0Lk8H71G8MNmjhVbjSz
	 7aPhSpmmYKz46PnsRZIT4HO94OotL1Yx+/PB9gnFQOBmNzb2On9Hf3m0ZdsxmRQm4s
	 e1Xec7fdEQyqyF48FP4gWO87nEcS9rDrlyRhvcJ1bAwZ4ZNV96H+hDQkF0qWrGjDwY
	 8hBUlYlaLGFQGFnCGw5OInevTZN1HJfRN/g8EHMwavHLbZV8BcWSRut2COjpDw0dOR
	 gQ+EG1paypRwj4Aj2YdqsAK5nBYemWs9bPpkA/CmFyoPARg2nCOeeNsBb/Mbqxe/Yq
	 tNTZtbvi0FqJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19B6C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 05:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167963640577.11728.18419349610497781419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27c69b22813ea0d80a0e879d8c27e386dde1a2d07d3882ef6ddd0365628122a
Date: Fri, 24 Mar 2023 05:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679636405
