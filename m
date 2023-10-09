Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633B218C20
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 12:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cchn8nry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7429C433C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 12:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696853828;
	bh=N/gcDf5gDmlnZqhvLv2TpWwD1XxTPc8wbg5pCj9XIj0=;
	h=To:Subject:From:Date:From;
	b=cchn8nryuzxR5edKDCMWjMIcg+2ZoIalMT0y4p2NkpYFL4vPz3F2dVWL2ZEnT98We
	 3R9c4DL0jtv+WXbTtfX2p89kOUzc+2pgNbnbQOIIzbgMkXpaRp0QUlGjnr2RVLMzY1
	 G8M/bXirXWKEBzCZRCeXlHWHf/grACS/RJo5f5UfWoP3cTjYvim8ywLxGYZC4C0NTG
	 kxKb+vPUf9ZRD+Glh/cCKX55MmJ5tjc7s3gzZDmXfmleSMPgE/5xGnY2EK71gMkWNC
	 jPgwUzNbSxb1gdeZtx2b6xKtnH7wPudMA8Nf5NPDYjN/sQ3VwrGgcPfbFObxpvggBl
	 q4tZRNF5SCOZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B826EE95A96
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 12:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169685382874.2972.12306494745012709877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036b759921a5172e0278e84c7fb626f3b5851d9d1014522ffa1d7669301d2ebd
Date: Mon, 09 Oct 2023 12:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696853828
