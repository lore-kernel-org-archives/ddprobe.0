Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAF68477
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 21:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E304BC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 21:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679347625;
	bh=7QiienmCQ/DUHCWG1CmslWm2DhI/SWrNOtY4eLBZ+GY=;
	h=To:Subject:From:Date:From;
	b=DjhYWA6QmVRGS2drxhQu0d7DIx3ZGpddstHh/MJqMtSRRJgwdlhcotjXWGWVC+J0y
	 1V1WsaK57+tBnuGpkUERoQF+GHJ7Oq0EHj4pnfw/4azsNznGeXuBtFGPuzTK96aL6F
	 3rpt8h/rbhu3gHSlLPVciKpXxVmlGmSwp/g4eXBDzJEO38jaUFX5AYLCH3opB9nSzO
	 DL418b6wnsI901MgmEMwVc28OBUdvyk4ewYtefhuh/KNDwsQD9FisP+ISUWMdCW1wu
	 gNyBt1ZQPfzUijTZxPR6zwUeuDRCRit7k25XriRt52PS5ip5D8tj3QuxC5wUlKZjpD
	 +zpUWM8JrcW7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3207C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 21:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167934762578.13240.14729215703341732841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71929087c1057a7433987045ba9fe8953619ad1911861e5f42e18bb55996601c
Date: Mon, 20 Mar 2023 21:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679347625
