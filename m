Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5033820F8
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 13:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2EECC433D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 13:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682948286;
	bh=rbCxdRGz57a0dpVNJQqSYulx9Wf1SgHOHv13KMkwAEo=;
	h=To:Subject:From:Date:From;
	b=K14HFwtcMG1eHBs/X9sSXA9Zl6ZMMGYd9hbGNV1orONBlkvE9S8e+YNzBeKf+6Nn0
	 WXgphTousLId0V8k+HaXDb68eFpOrAVIglBw7pxNgcXN51UDjvuoHDUymjeZgggfY5
	 v2h6eBym1wg65alsyTgxNZaMAOsVTRS+QoRcc+TceZKlLWsshLnD8bBt76I2lEzGqg
	 p7p3RZfITUiKFzuzFXmuuLzVC/y4eWsN1nlV0DJnr3Ar1HLVXQgljl3l8TyzT2ww7Z
	 P4mGANizLiaot5dcX6unH/Iuf8SdEHIZLXw/Qncu5CNJs3DgOuGPJqECbigBIrNu8P
	 jMtKnHlnbW0bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0211C77B61
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 13:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168294828584.14166.17512581374619899642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d1f01abcf304a71899a404c15abb74eff4bae3ef55967a23e7c852d217534e6
Date: Mon, 01 May 2023 13:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682948285
