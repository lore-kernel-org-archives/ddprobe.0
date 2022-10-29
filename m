Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C102E17C6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FDC6C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667022654;
	bh=n3vC2GFEKRcWqX4GtHirSJ/aznd0+z6Gl9zOxArdKKg=;
	h=To:Subject:From:Date:From;
	b=spEZW0i8bLYY3nyOnYgSiIf4ufb9xjxyfRNxxfACOmR9pt7FUOPGuDcWwz+eX9cTC
	 Oked0JHHtH9RZE1Ix45mYseVQ5boDNRcw02C0gBsxSOvzsfIP+8VStEaZAAdHCkG+7
	 tNeuKHouHe33oiy7VbFXWdo9sSpv7XpBuNicxdEJ8uFN7AMivBO+dl6gnyFzYwadkw
	 RkTDM6XUiVo7jL/t+AbChKs9NJiShZ4S9NmGg+TX9S68PwqjpQDOio7aKqybdM97ZA
	 FU4VjFGPS09O0U9fmYGrMQGUUMbxyq6CqpJZGloktbJn/S6yqosj1B0pyI//uOZklu
	 eAUdwyA6kssNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 560EFC433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166702265432.8320.642178737309995621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369ea86f37266de2c905f9deadea571751e2ea6e622fdc635a4bd59f6fe71c43
Date: Sat, 29 Oct 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667022654
