Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380B72F3A
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 16:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72C8C4339C
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 16:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677516365;
	bh=Rn8Zk8bZhAJNK29KWocHIrnlBkpqxu23h9+SZ1Uu3zk=;
	h=To:Subject:From:Date:From;
	b=b2F1off8xrHJmjotXe0ek3PFrjc4vB47uCU912qj1nQSPz4wJ0XgbfWtTafGji4qz
	 Egnu7ebdDL+mI3Zw2CZfiVBPaKktHGjeLaR06ptBFBTduhUSzL1H+9Uca1WI385/zr
	 i0k9hYoAFjVM1qbNlIvngTrNNGlniSqoCBvLDQkxIg1MMD2xFv4AatY89KC/Ku9AQ4
	 b+/eiNjpDEFewwUa09xNSImthbPfwaVX6TmfvykEWgvLqNePnw0ESXbbcscSf1msHN
	 AphTERyWUPPPLYHv+DgcF0dHeyF+3Pw49vAt4NDHK+8usPgHX55Su6IPVfhArUQx8G
	 aHS3YWBgNRQ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B584EC64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 16:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167751636573.8714.15232427675357513322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 123c62806e6ab1515a20d5b9387e5e90f1e37b8446fa6aa69e6fb510b4d65cb9
Date: Mon, 27 Feb 2023 16:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677516365
