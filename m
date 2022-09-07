Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD96C7E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF27C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662520253;
	bh=9B4gOkk5RY0qkGpWgsJZXIfbAoglbDh+aBbaWOrgNrM=;
	h=To:Subject:From:Date:From;
	b=pesbSkbsWygc+L+ngQogQAk7SE8ZSWp1BgGXub2CViO67WkDHpAahnHYByi63yMjZ
	 p9d4CLdU8klLwpZFUFC07U6P/dM7DuXO0JFHe5Mik1STgGEhe9KFGqTZ2MVgJ8O40v
	 SZdj24LiBuP5g0vQnWfIRwlWTKuWZMf/4Sk4zK1Oj4QraXQAKOnb5fqOmZnMiM+Aza
	 cG+Hh4UlK4+t7NVje8+CcQA3ILIaM8zVahjH0H5yRU5GiIL9XMlGrPeQed6FSDNrum
	 1G6Qm3HNxoG0imH/ArYU+s8jc1xTpyHD03lb30NdSeFKgjcvzDztJR2qujiTjAGo6Q
	 45dSHEBdqqy0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A4CECAAD3
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166252025334.7996.1650733193052087647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6beb7a964ba9ceefd799b5dcddabc5ccfa3fc42fc922036ccb578bbe437cfd24
Date: Wed, 07 Sep 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662520253
