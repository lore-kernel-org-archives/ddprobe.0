Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58556182D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 22:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C10C433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 22:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689115628;
	bh=Zg6t4vKPdxY+sLCVjsIof2oGuGg82QXL7NP1kNhnQGM=;
	h=To:Subject:From:Date:From;
	b=RAWDNd22jY4m3mEkU+p3GIg5YANuLBC5Hu/yUPlGYZoT8Hn2FQcx9PFG675nIqjS4
	 fZvdJEvegZxgG1oqTf0uqDnNQXipM1X+B9GiGx4xciROikNKNSxXAlX12jDD9VH5WB
	 EwxvrmWqJKLc0VnZyeB4Pp/mcQcJibrApQl7uF8ZJm6Xu7cgQaHJEW16+SqWuoO+Vp
	 WMOxFa8mVmgToRiliUFqy6ekwZYQi0oYkGr0WLrS3O0He6UbIu7zTiGD4f5tno+GHK
	 J9Z+ImuLg2cVHP7jooX5u2/Q0dE69GlN3qtfQMhklxPnYeM8P1FbO0STVOd0WpXFCr
	 3pmbqvePirNxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCC6EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 22:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168911562871.9777.5408153434186043025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93ea25eca331ad63767acd74e388363c21b2974e970fc5b12efc3e89150eca6
Date: Tue, 11 Jul 2023 22:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689115628
