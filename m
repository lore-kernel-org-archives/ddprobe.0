Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E6217C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 02:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C91C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 02:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677985025;
	bh=ddbermghhfrsyDubHyGPyk0oMl8DHYZytrk0Z30qjmg=;
	h=To:Subject:From:Date:From;
	b=fPTOiXASTwqrgMAxZZOEqfLdvW91qwBc3YtGmICFZIoeEVRyovDjngPK5//dk+TFV
	 x9cfHuaKYxCmqkbkq/mUtjU0mmKqN0wtvXQCJJ5r60mOz1nKhl3c9UJ8UGZca8mcP7
	 lJiv8IR+8l/M9XiZhPDyrYTxiTzyA+S5MrEEKzi9+vRIaIGIvxAmvKJHINZj/nQqbH
	 OY7aRP3BJiDu74vUm5dS23JRSliun2N4XIfAl+/sXJTMiQDWftlW/2T+S7qfENXFoe
	 h8fnENkzjdpABBxsyUsPABSdzLdsI7JAvQnDqi0a3yO+nXo8BljIjGRbuhnSE5uV4I
	 Id6MoiqWDEQsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA452C678D5
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 02:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167798502575.19455.14698120182600628122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2e97be304fee16329f4de3e30b02965b256c3963c44376dec695c444e7354c9
Date: Sun, 05 Mar 2023 02:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677985025
