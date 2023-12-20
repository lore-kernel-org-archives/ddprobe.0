Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC1148795
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUVuxsQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85F2AC433CC
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703099896;
	bh=4n0lO0ptpfTf+WRcrkauqZY+WwXUWJNut0HOpoXbJnA=;
	h=To:Subject:From:Date:From;
	b=NUVuxsQH1K9K/n2IVSKTQr6meXoYLGQP78ddlkpIYmNGM8NP9rAHHqLfwAQJsnM16
	 KbwiGRXMEnWs2bYFrqxK2hTijE3iOlRpg0t6KXdjL/pVB3pVjEQDMQ8X/cl3xykbd8
	 YcKWvadlO6C2ECu67rOEbQC4mBKJTYN0mSC73SCL6E36HYTMtoX3GTp0JMZ9ogAPP4
	 RE9b2oddICmpIofq4X42vTiahmauO72yGhUwJSpj2QV6dENKHsyrkSKbolwK/RbeYw
	 iNMd3KKpLRSYgXfTxYbSW5YHumvM/eRprHMvFe2xJhMYMvJ+zQ3Y68m4mdCTmhna+a
	 ieXqT9QU8RUQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F098C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170309989640.2357.8789454501025264301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecf66806dca91aaf95c1fd3afae9669bd3290d3ee6d9ebe335ded89f74936d80
Date: Wed, 20 Dec 2023 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703099896
