Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A2F7E
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 02:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C85C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 02:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693968848;
	bh=/E0N69YI55YcLRnXp9SVVc99D6wGNgc2xSQ633piFOI=;
	h=To:Subject:From:Date:From;
	b=sNiduIYi+Sz9e0fdfpa2TqgQEbEmZMpyi4SbipYFT0mF3oApO+A1kVp21tSX071qq
	 MMdr0rJt0LyZB7DZtA3j9WmHsr02Tm65EoURurENQPQSUUt9K3+fnus2nPVzSEJ99U
	 LEmZ4+c/rViKaYs422RTScH8SVpFrDHwc+fjtMl7gG/eQbHIXeUfKT88pqYp2VJLJe
	 yHjJsE4BR015p3VR7/2rfFpI9bsLi/uPEzrgm9xGt3GVn62jsMTBK7FaDduGf8f6iB
	 1QxnLBsLp+Yc9d0xxw5jGETgTOzR2eZs8vuBeSsgDhpsZeSwR7xBpDFAEQca7XRF1x
	 Q7bO8aEYp1Rpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B364DEB8FAF
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 02:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169396884872.18497.1767072349784871390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90bb67c48b5b0ecbe1bd9420174d611adc9660f7aa33a9833c6ff16d70cdd3f9
Date: Wed, 06 Sep 2023 02:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693968848
