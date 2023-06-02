Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA3E6107B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 11:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A27C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 11:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685704025;
	bh=h6ESiW64n5b+ntLfhjuvTRkiLLVWRdhhXgLyQ0zCR9U=;
	h=To:Subject:From:Date:From;
	b=CE+A0Cd+YXcVu9Ua3g4/4uG6vMh9tozz1T5iSxXgdQq6Vg0ZJXsphJ5PWRdnWjHtv
	 hsIFN6H9p47tlaQpgYoCc5OQzX21KR5VzksoRFcMhH52Ar6ZnMaYrrisPfzZHnpHLJ
	 LFtemS7bb+EmgWPj8ilN/6PT9Vmt7a8g25G3KCl8E3GigZQmbdKU6stP3DRkZda906
	 IUNPyKv3S2/8iZyV/z0JMwuWb+g1bahGign8aoPt8UcWpnfXA7qAzM2ljN7FUq5n4N
	 hJ0G5qOLPkg1s8jLhCkH2Ks9ljrNCpcP/RGkdo7gBN2KBMbavFluPOFayFp6yF8k46
	 99xLbrkQGB+xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA32C7EE2F
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 11:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168570402576.10902.1221735155166356392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e832864a14ca1891d32eb077aafcdbc4d67e65c91d64fcf89db0eaf96fa3c2
Date: Fri, 02 Jun 2023 11:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685704025
