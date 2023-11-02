Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C34910E7
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1Ac5iZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4FEC433C7
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698888496;
	bh=qK/Nwq1QL3JROdxm+iZMVUWDOkwLrjRJf7HGgjOfKYI=;
	h=To:Subject:From:Date:From;
	b=p1Ac5iZXWUDFA2JKzW+kTjbpdxs2BItypVs3eHfx4eL0OT6TQkosXip+L1m9mMqm1
	 /QDHUxTd92PcLYuTUJ2kQAuhxVNgEPYsQp5r3M09/QRRMAGNbNmN1MjEQlh2eCxThJ
	 W8tTu5Mi0PGb5EyOp0M66yeJZVKlDnK9+w0tBUiZ6p6OCnFxzrz1vl90VIpGT/TV8J
	 I18Z9tQ3t1bR7ABTYOCR4d8D4lHDtHTLlX/69g5G6K43UlOvYa9+4KvwILVa7a/mz/
	 R6+xQ0xk2gOC0fgkRvF1syIsHsh5WdJl5AXCiaoDrhurRDU03a1rPC7IMrVYkA6kqT
	 RGDv4fsNdKNjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EBAEC4332F
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169888849650.645.4061637927371311228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6cc4a497e7b1c25d501645dc7b41ec190e1944192304d6ed9ef40f6e7bba6a9
Date: Thu, 02 Nov 2023 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698888496
