Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B6A1FB1
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 07:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04202C433D2
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 07:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684135146;
	bh=I4KeTGCAeF8W8ygY91iBAfFmJPnylVfeb9AMRROwkek=;
	h=To:Subject:From:Date:From;
	b=eWPpfuZUEb5PL/QHQcJcqwgSOuy1fLupA2uOlM9mgqawEDLOZ2FE1//0Oa5cS/s04
	 NGVtH7toe+Xk6P3SdWyI+raKpSqw01AcYBkOj/8ZlCHSlXDsPdGfHilzx2swXxUV94
	 00MBrLT4SQWeTH0oHOl3kk7W7fqTDBSC179CchpOjfYfwCed18iilX14RXFWHNejsD
	 ADdUlTh+LHfQetWBv6XTFIfmME8/ecCcGMGsUREfwszJkzl3CQwt5pxQ/R0JlY5O8l
	 3TAmVj92MlUCerxgQ4CdA/ZWPPbZIR95R1pmH5zhh9XRoPF1GyZWpYfjg9dCaSwdfC
	 sPtyLsM5YUF3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4DE1C77B75
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 07:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168413514580.2820.17692502521857361511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec02c4f0c5bce8efb4ff91be9d4c0bec7dd396b8197c673f588b08ad743a6f5
Date: Mon, 15 May 2023 07:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684135145
