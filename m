Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0AE423DB
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E3BDC433F0
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672404687;
	bh=NtzAqpbZemxDl1Gdwe1kLtRAJrLZLevBYhv64H/7og8=;
	h=To:Subject:From:Date:From;
	b=aYKCOMi1303bmvTkCKH5eFG+LdCmw5mKQooi6GtYOHiw/uOeYHiXKrqGobfrbfRf1
	 AzvRfMKlAOnnELknw2+4jfqKsptgTQaQUpHdboqQzUMyUwHkQnwGG2brbDKaKr6qWj
	 MVss1GkWKmoFAioLJdOSQ0PQ7KrtRkRVpcEybIHIwX7YMkSPI83Ns7boHdCi/MFPSi
	 ibSFvNCZ+ZX3GV9D1ORiTB4VsEWIhHOWeU3OmiX+GoShEGhDpuw4CDM0hvEexU1XjM
	 ICE6RjiUEsrnSUv4NpcdBt8Zi6JSO6DXvpKEGD+oJmLUOQt443aPzW/KEC9c3F1BhV
	 GVLE51zwA3V+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63EDCC4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167240468740.32472.15063521603322919023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058c86ce2de171bd1973f4e9f3ce216efad3d040d7a04bdab18f1bbbc1c07edb
Date: Fri, 30 Dec 2022 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672404687
