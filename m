Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 804FA2F2F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 15:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91A0C433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 15:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689003428;
	bh=1eLV1Ot7e5N87ih5gMcaYAHLCiGHeMLyBTyyORyjWkU=;
	h=To:Subject:From:Date:From;
	b=R9nu/iPyRwZfnmCEt0pynD0IeoqNPHbmvIO/J6h6F2Fl4QdMganDr/MMWG0ZfH58z
	 1lgoHTY/AfDkr2zIOmglfRirMzcBtQghWyQDaBEP1vRGt0c0NvCJTwc+ETgtIMSuVC
	 931JeHC0tv06tdL92sIkngXC71JkZQQyLuir5fmVo9TQKXxkuTq1ZW+MYu84gsVsk2
	 DtAJWHiUBhuk1wZglz2O951asZmw+pIycVlGNmFZ+lNIzASx0eTz4RpdoFnbSeGTHm
	 NPamrKXIEYpZaX1HskyrCMwKwjCMCSEO3OgmCuHxwZU/egmDVwsWDmQPYU+WIUf+m6
	 ozaI3hRZok8Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA8CEB64DA
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 15:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168900342876.26829.11258662827996838869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7798dc607a6aaa1170ab975c26fbcf1e50a4d440e0a38cfc7d42dbef845e33f6
Date: Mon, 10 Jul 2023 15:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689003428
