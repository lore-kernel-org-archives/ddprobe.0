Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5418EA94D
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 21:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFB3DC433EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 21:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675977126;
	bh=6h7HOWNJ9zXcjNlxQwek6lxRVhBY5MprUDPk3bgwpJ8=;
	h=To:Subject:From:Date:From;
	b=I96n5cCB2u2q/gPRlma6WDrblKtILBEWISV3KQjIlsaWbz4A2VdfQAEb0oVmScIn+
	 L80qrlSO4tgBSAfg2MdquBVuv8udqASoB1V8ETmTzAqQ11tEHCM6YgUXD4dlzwlE1x
	 5WN8mHuVynJ1HTLJw1yUs5ycKpFiwqgpwf5sPRga/61HLicFfhVNCdtzBElBY0dRs3
	 JwYlCCCnEXEQ9b5KBfZ5Sugbsu/zeIo7JtrRNBrGgV2C0Z8Z6/2gHF/33rhY5ia935
	 +Ug85H2xuCLuUENcsaq78eSSuBYEja//TzCY0fzV/LVp778Kdanh0LqvCjmv61FAQX
	 Lx9Wz+qj7n5Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C90BBC61DA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 21:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167597712575.26049.4359567114536176780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8165326249c63ad589727a5309613eec196baaeda08f46b29450ed1057271c03
Date: Thu, 09 Feb 2023 21:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675977125
