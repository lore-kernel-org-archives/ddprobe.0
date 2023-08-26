Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDFF186E
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 08:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4D2C433C8
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 08:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693038848;
	bh=waLiZbQe2/3gd9Ie6uB9impMuBe+ACmLGNLzvs55hpg=;
	h=To:Subject:From:Date:From;
	b=lLMmI1rapbdqeYIvh/tr2P8GmMV+LaJwzPAdd0AynvnhS/p5OOUJVbkwRlYgQnkx5
	 Z9Kwxyg1SWj2QFkp5ZdUkom51WQWqJ3G4FzXu29MHZ9vN7FOYjUmR81vyWqPsju3nS
	 btoVp/YEH/ep1crPE0AxGM1bPhWDOLgNHlNUPxUnoYZuUeS7akrFGmNRarGqygmXSI
	 bdsBbz98e4/c7J6FUBThJDlXusicEkG7VxhbEddq27rP/qZv0/7XDJyWlRY8kAXx1t
	 cvjSnijp6V76BqdazgveZ7kb13jFxGg6rO0ajvIhtANP57/vRASY+mVgkzI30LM3py
	 B6Etuhw7P78QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF28BC83F16
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 08:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169303884870.9214.116890675908767035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a505b0fcb92e6dc45c6c361d6ad9ff16d8f51bb3eb7dda7daf76eb1f97c872a5
Date: Sat, 26 Aug 2023 08:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693038848
