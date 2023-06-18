Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615CCA2D
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 02:50:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C555FC433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 02:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687056608;
	bh=auIUu4Ybw31j2LxlxPBblhaeWMhk8Ij6Ud8bxny4DcY=;
	h=To:Subject:From:Date:From;
	b=Om3jodD7aLJHp+Gbpjjr3gMGJy0IwHk9P/xlGcBnsqrP7u9NxzOO1CRylgfFH8Kat
	 my8RodVJnOeNncQzRFJB2q/3b1n1Cyw/aEEPCTBn6PO8etRiL0aLUek63IicPMx4Z7
	 YwcgxWhDwqJW6GgYTgcxaf3MB9aiT/4binM3xkKlh9F8H9wsSW0921vO+Ee3UrJcxd
	 SIqydz4096YQe4yofa6AH75qdt175TfRBO/ct1fnCXCev0wzvpy3OBCX8vtnabB6rd
	 MW+eoOhAT7Tv3jhWQ208myDEKOZSta4nB8Q8ddVT+ThBqD89UQcvNnniEmcVOwrgDB
	 0QBd3mnuH3wzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E98EB64D9
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 02:50:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168705660867.4795.17353262278161394480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdbe38d1afe0b6a646597fdfea27ca42255ada835a4f8ee17251e82c3d75830f
Date: Sun, 18 Jun 2023 02:50:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687056608
