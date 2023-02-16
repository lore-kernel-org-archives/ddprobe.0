Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE8A17E3
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 06:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 280E4C433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 06:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676528346;
	bh=QR5L3kYul/ss35TmwpxyCveN1q8zo6DcexqUFR2LNmI=;
	h=To:Subject:From:Date:From;
	b=KlWNXn+WD5ypfwCd1k7pfSBGgvOAkYGDa52ctHMPLnvwPTyuPRYIWEn28kUSaaOA0
	 eGXQzrHskki5R2LnA9JqWRFvRJXAOLwsLIl+uCzklmbqUk+7mTF/0MyRFA9cM42D97
	 Jfavz/jLJAY5tNx9dtdMs1N66/x+CsvTomkFkBIhLOxfR7q6W1bC99C7YM/236DxQc
	 Dj49AZkP0lb5N/CTAlcqmh5+bBY33/z4oREe16YKRkCKekcqtl+AaKtE6SNEsKIQeB
	 769boBkBPbJaw7sjEtuRN48dILV2S5zV86VWiWBi7zZX3ZpQiJ7jZ6wHu9Xhgdv1Z2
	 5c9wzc8yjiJCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A3DEC636CC
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 06:19:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167652834603.17042.7202927639648724139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd3c39ee8f631687df0189e754164ce6611747d340066dc9f20f8a7fc07e157
Date: Thu, 16 Feb 2023 06:19:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676528346
