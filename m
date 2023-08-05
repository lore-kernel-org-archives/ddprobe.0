Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692B510EA
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 22:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98DDC433C7
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 22:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691274188;
	bh=VGStlZkiYB9zopLmdUWAPTXH0ENSY0tmRO7/30rWlDU=;
	h=To:Subject:From:Date:From;
	b=WUEVmGnuTbvI2O9dOI+JQOWf5KKeg5ptugNrYlL8Og1fTvAwMNbfzvU9ZBjuqZq8t
	 c9iRfqSWx9dHkMf8Sr1RGKuE01a5UNJxdJRHoxdVw3rKJZYxZMNraA7QKU8LybII6K
	 /wnCgg9bUA0jaV+cgi2sUHcqO0GUWfx2YPfZIrXHfr57LqsRw190twVml2FSKm1fUB
	 6Pf5uOO+zspggKgX4dXrZoEwsDJg7tQAcUJFGEVR51m3TOxPAALdSUpA+QW1pjriEI
	 177mpFmXv54gZy8VZqJ59d56L6yzVQ0YPAVn9xyq0VBU795yLBm9TD6Swy0x6zcSeV
	 gG5AodBCxJFfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE5AC0015E
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 22:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169127418866.17947.17840162201699889586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f739b831fe1f7ad9eef3f7781301e8dcbe9d06a0e235bb95660aab05eaa055fe
Date: Sat, 05 Aug 2023 22:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691274188
