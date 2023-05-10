Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6BB20B42
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 13:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED459C433D2
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 13:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683726066;
	bh=129Jhfce39BoKXXHs6tEVFTbIy8fTnH1/BlvtApry5s=;
	h=To:Subject:From:Date:From;
	b=Tz/X7k81IAbJMAxz8aFWcfj++xDFOwGRJGJhz38SlQSZSBEDucNvvfSstOQzqVsP+
	 xxxaPUwQktLut//YlbfMn7pZupSm85rTGymsK8fysUPjM3IFuS7x3h5wkH+uV5TVmt
	 f7PGZcJwOsvOotKrF1HDA2k91RlYefiltIFsvqYcEMEvxyMS/JNQA/SC1M0K1QYiSY
	 Y00b2JP+XSEwk97CvJMY6jHuTBya+SenTj7nqzqZSEYzSlviPKTcVo1SJLAOLi4ouW
	 nWZqzNAGt6W6D71AdoOL81DEYHta5Hoqg3y/6Bm64dwEb6XIkTQ6isLKk60lhEnQsU
	 FMO4jqFAGZdTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5AAEC77B7D
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 13:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168372606586.20819.16639693595041479396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5313b11be9a4544183f938cc7bbe8bca47b5fbf1b8d6762cfc9b755e7f228250
Date: Wed, 10 May 2023 13:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683726065
