Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F7DBD33
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 08:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7C2C4339B
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 08:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675758425;
	bh=f0wJh0+Ju4V7BvffLhZVS/oshBaR4BiX8JwhiDC3r0w=;
	h=To:Subject:From:Date:From;
	b=OXYddeBa8i/mAyS9Unb2Yp7bHvEWNK5oRcabyYCR6PCAngDkIlqyoSsE2tQwIK8qh
	 JzxBBP36LsirIaoV9YWUJMLOYRlg0/9L3CqUvLMs1fF8bh/fFzjmf2sUPWClMH+N+l
	 8nguBu2qaYY+0N6VhV4h+OsLyWIeQlOL/k2CCix4uenLkqieDhlxWudtSW48CT88bb
	 vONDK0gACJkju06rG/BY+RT/1y7oQwgIv8auxnQ/N7ydRNQZ37mhnmJgcYWMglnV7R
	 iKunz4a/kRDrOgLYE5f3puIN0bQ3AnJkgpWn8brRxQ6QEWfwIrOoqYHu29Rj2zhtDc
	 OmuipHL6QapzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA5DAC636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 08:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167575842575.1315.11260046875906494915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e44328d92cf4991cfb9031573db299b5c32b5682e4b99092abbf223b3e991dea
Date: Tue, 07 Feb 2023 08:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675758425
