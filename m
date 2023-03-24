Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F58B20F5
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 05:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3198C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 05:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679635805;
	bh=D9a0P0FKXCwig+7uKvMaf5DilD3G1ggEXFZ8YGMUkCc=;
	h=To:Subject:From:Date:From;
	b=AnR22ZpunG+NfgokRDyWeBgEFCWqed6iaw41Z+PMIjgyuQpFsaoD2biFbEfr/j7tr
	 bLSttJcdAkl0/Zmk9sY0a7s3rXfIxQYMBs7+9WczrWqix9nobPfYm8Sy3uS/eox3w8
	 kU7gPtCu1aoXJFT+jL5mdg5pyMUSMuhcDrzOx1KAId1VtKzelop/GsiqE4l+50AwwZ
	 JkClI9BTaxX+w6QAN4w2vB0B/3vuC0ieS9t2nag8B/iBmx59rk1w7JtQtXPx6bRWWK
	 WjJs+mLipDw+LR3WCAyfg2i59jjCz0pS1kYtLUy5vdrKr5HLOcQGNiVVjnHNB3CzUr
	 PA3CrACN+LNYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31A7C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 05:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167963580578.9343.14985096526548618121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5077ec98f58e1a1dc2c7ffa0046b6fd8fe72a621151e7985e6d515fb970cbc
Date: Fri, 24 Mar 2023 05:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679635805
