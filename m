Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0361620326
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDXvr3HM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83950C433C9
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698778096;
	bh=SaiuP7PfhEPD+K6rv8lx2AlxwAJaaXWqidiNypZEzXI=;
	h=To:Subject:From:Date:From;
	b=lDXvr3HMw5VT8HmQCr+W+Xm3PBPXJwuT8ayHHSoHp8ZKpds7NK7YIpdFbFtVBY+w5
	 KlHaxUym543fUFHuPDcskgLgcvE9g8b9FYIMmRxs0ntlf1GLpn56e+uIJOyoKAUWCk
	 YwIe+P/kWt5Cm1tjqTJ0el/b+HaN8w8lhleq0H/ZMsRq5N4JU7lAtB/CgMMKzsrsvB
	 nuLAT+RAxcl4+LgLTtBKbMCrkU4jBuhFdHDC0U9OSjyiFHmQzjmeOBqaDSVa2AKvld
	 NE5T49aC0DPHFP5hvgCZByxe9k1PGSkNphar9nGXsyTgPJR+FmucHf11WobJJJVlr+
	 LglMuF9dwN5iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 624F9C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169877809639.12834.11997141296106370579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fd1bea36d26db73d840232af95df6761fce1b00b785257639e084d96e2ffeab
Date: Tue, 31 Oct 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698778096
