Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BA27F
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 06:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E43C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 06:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675577765;
	bh=MSX5hp0raeUWaAj+qFCAZsQGk494rbtoNFqJyVTRnrs=;
	h=To:Subject:From:Date:From;
	b=nrYjG6CYcZxbSHftWyfgdXLjrp9+h/71/tARPkQBDAozGZVI/Ei6p1TslmjATO2Cr
	 BEuV6sAR9BQKi4ZFmmSheGDjcB+8qFqn1bcdo5wwrSp0irG13VCEE3zXms+RnmHhXN
	 W9sz/GMUC9c/VztL7O6Ioh3XVBzLNwzIgndIwUSbaR7RfADot5z0oJuBC6kwaX9w6B
	 gLjg76RPuEcllqBEp5RiPLI9K6ZYbpCWIDH9ZtR5TwctM4vBHi7h37ineA5An+I0YF
	 6sqM8WLsSr7YW0Mf1Pz+biYlkp2QOrxlwvbK8xZYNGsPsW59PpJOrurvgxswxifiJz
	 yCdRUxQLtG+5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C23FFC636CD
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 06:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167557776577.20666.16820792238808990294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0f264a301764a18c5f02cc3a4a3e947ff1ce6816c58ef50cdd84089ef4a2a4
Date: Sun, 05 Feb 2023 06:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675577765
