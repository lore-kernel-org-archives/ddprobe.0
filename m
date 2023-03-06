Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7C7525C
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 13:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0CB1C433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 13:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678111025;
	bh=jzcrYU43/uEWfqLiGKGa80lj9uDlAYSsi6cOGXPCwDs=;
	h=To:Subject:From:Date:From;
	b=f16A4iB8xfBhI0aUBjJLyyjcUcjBuOHG3RZJOfr2cH2mymD2C0G26TtnCsc4qADoY
	 nb280B7TVYRtPoMBy+eLLweU2Xol/Gcbb1VwDkmtwDZQsuwq6klewShdVcFQuiKTc9
	 74OCD/fT/R8wyHGNgBX2HLWkwN9r2NdaTxbJb+W1EsJsAREohwWz+ai0XHwHaHvmxH
	 /A3EJin7XMFYRLcRD/Ee+yvMHJU9VKnA/b+IZdOyxJcBZ2NUP9geynSvdiZ18Q/Yai
	 5nJO+BBJlK2/a7GWh/sJ2s8KAVyocjviH+hSKlDpMnlKFKteU+tmj9c18Z1NYnIlZG
	 ZNhAx23GrcXeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F1EC61DA4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 13:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167811102577.25422.17543867710311646733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb5eeddfec2ab24715ecec4d63009eee63148c5241b71b93ac3197a5668ffa0
Date: Mon, 06 Mar 2023 13:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678111025
