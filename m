Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504471841
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 10:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F7CC433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 10:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680951065;
	bh=Wv+6O1dGnTCryBYVWK7EsXZWdTZgMgjxM8Y1Xtgf4TU=;
	h=To:Subject:From:Date:From;
	b=ActyGVFxdFv3f0jkEu9WGK4fvu1ZBImuyAF6sMN+AP+OtLIV69JemmYqt0gn4wXSo
	 47gstT81ZS9WNYSI1tCxMPu3pmb+sAlslq6pg9Gf7u3Zt6nyMgUa+Xxeovu3t51w27
	 a4jNH+tRIr3HuXVyxK4LzJLNW5HBuVK9+r+wK1Hw1yVpKVCTYr6wYi5Z/Rp2huAnKV
	 86YzUcDRf4GP/LiA/TJ8FzAK2AyRebVWnOfVOtFRRmm6ROfoQrtvJtuuHKx/TYuT0W
	 Xn3XJHM9Li/ZY/U6zFIR3lD3h1eBIu9Nn2RokMDHFYyu+vV92sQslVZgfi/RTVOtvH
	 vh2iE3MNnShGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C23FAC77B61
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 10:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168095106578.7468.12878920726417729396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e802a202804d4e1533c23ed619d8e78f81ae1b6128c07742b6cc0c76412faefb
Date: Sat, 08 Apr 2023 10:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680951065
