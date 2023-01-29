Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513CC323D
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 20:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0FBFC433D2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 20:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675022585;
	bh=Hy8mAhCFcwrT1HBhLD/SpNpCpggOXXl61sTP/Ew83jI=;
	h=To:Subject:From:Date:From;
	b=FDGlp5b4Y8/3oAwEIqkutIhkGW9sEsA/iq7pycr2BGwtj8jIAjkaBldQ96K+7O85u
	 4RzOk01P+suz1WwdMMUqjIYw0SU0RMjt6m30K+v7pY89jqIBQEhW6ZQVTs7S52Bp4n
	 lIK20YGRrkBHJKgQW7bGa0vyxzcUiHObB1yx4JyrM7sPH2EbukTjuSFmWyX4e6KFs3
	 3gC1awpLK1g7F2mZuO17oqExHiO7my4cgfRWdnEtqcZRdAtx0h65y/pIMd0dpYl2GR
	 X/GJnytIbJNuScX5whbeTphxwxrmuLl0pj+vUySoHd/eKlcNuHwrxfXxtlrprPof8/
	 Oc76r1RUPTSxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0899C05027
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 20:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167502258574.26703.620087406820003002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 953bb5d0fb85a7652f3e3573cc2fd90c4baeea7af03f599e9f48880bd3aa65f5
Date: Sun, 29 Jan 2023 20:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675022585
