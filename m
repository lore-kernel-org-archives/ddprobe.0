Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D5823C8
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 21:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5FDAC433C8
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 21:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691961188;
	bh=mkkBcwmmX3bB9mF10ESC9c7JkTpMlcF29VVdQNHVbu8=;
	h=To:Subject:From:Date:From;
	b=e7anClretU/loxnn+rnUKpwzWiX+3iQjT0M/kKDTBHmHa8ESrMC2/ngsIwj7nJ7Ym
	 C2r9NDosDwOLjNMwfxq9rFw1STqeRFFKeGfNjQGMHqWw7VvoS8bAZRbH9dEO7aOC4D
	 1wi/wF7FjTZdr7LUzbsvVNTEcMo2W5ybxHrL0JGCiI5sz/ieeMIJfj1rPQdV+UXwDp
	 8MAnB1oJ3XYLkvE4z90FcizSFU6qKZfY/yhRpY55afGhwXBecWo4Lgs0iMEYuuKOIQ
	 kZ4GLpCorUDUWsw5RWFbsW1HUiCHVgHac9gQTfbtYBiQNZh4+tNzOIgwGB5WECh4m/
	 eebmAFfb0MImQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F1CEB64DD
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 21:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169196118866.10413.9996949225782264312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda64a24ae23ed0c03a525d8a7b07bdc053e348721c5e7409c249663b1cee681
Date: Sun, 13 Aug 2023 21:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691961188
