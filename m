Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD85E5CA6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73110C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662573053;
	bh=jUqLTIPiQq9cTAKsu2JDlv7ClqQbMVGGqfoVxnj7Lnc=;
	h=To:Subject:From:Date:From;
	b=Q24pFagZ0LAgJ5ajDCCTaGrbqxP0SZfDwZB7vxTSFRqcpT7z4xh8oDc20rNzTp8vG
	 2lHvTnPFwdRem0BdUmAYVmy79gj9PZze6QWInEdXLXdruUbooGfQQEhV6Fy/rQe/MW
	 +iZ1m7J+WunYiqgTlI1NwBQmgbXXYpmNqdOYlu9G9vdzdda1L/BoTIebKpyaijyuUu
	 Xta/bg8N9iT87CTibUz0wYyDwK/Oxp5/mvWoJ/CHbL1pVKmiyUKXFRwREKB0BbIpuT
	 jYnKNPbiEGk8FM0/9B8SkOj9Yjo4UldAUjQehdtuUIARUx8/WuLSgYAlvKeqm/EzH3
	 nsb49ZpIFgDBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55251C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166257305333.29372.16464586619513468305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e4cba922235acd46a87ec53abc724836ea17325de43b8f7f5cb6d8b94e1e412
Date: Wed, 07 Sep 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662573053
