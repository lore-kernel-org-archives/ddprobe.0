Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD9883C05
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68620C433D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666367453;
	bh=2tqjWOn2M30JFX34JtnLmuGppfB38TVFBFh5AOjpTXw=;
	h=To:Subject:From:Date:From;
	b=hjy8qnoQFJJ4akjN4hl0Qms5ixcBYMlnjXOBargDkcJ3nhm8wp/GcsFLUBTiKjInZ
	 WG+TLHWI6dvEhYQGGTWfIXw522IYZ9z7UTwyWdcAauMnxj6MKBJAFiJtXUkid5Xd7y
	 W3Qx1m4Z7bZ8B8Y5FlVFasTU3zjI67oTa1ojcmNLDZg2vE3KNKz5OcyJ9gUi9YITTx
	 UGISEF9FsYFOoz/kzYbKICt5STMMr/ENYcG7o4R6RhIJ1Oai0SP5/xX594DgDaZMlZ
	 GhCSggFiz/NuuvER070u1MZA9T3Rx1iwlV3yFWshH1UO8suSqHEPB3Mb0SRH0Mtzjq
	 ECDQv5noIcujQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F84BFA373D
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166636745331.3109.16651871442719369485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf57e8c6974cd17884f33e73adc0466cab4af925c792b6c92f0e69467ab425f
Date: Fri, 21 Oct 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666367453
