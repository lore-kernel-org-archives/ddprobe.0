Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A35315B4
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 06:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soeMwEvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C826FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 06:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697353028;
	bh=S/MDWUJ7yT71oyCq2vDTDV8gODCUmv/Qb4594e9kqd0=;
	h=To:Subject:From:Date:From;
	b=soeMwEvGiQirNrExWcCsWkIgHs9Q9IgVerXW0FSSOLFDnZOow054xffn6wr9fN2fT
	 dbwSonPzV0xctlEBcVWZpYPqvQIzJ/SGPRP248y4DNCD2+F+bJZJdcQfI9M2L6ay0P
	 RUZWMrBiS0k103yGNsN5N1bPvIW1Ymrl4v9i31Vn+CGqNkg07+Dg0bkOCglM4kPi0M
	 XzWWAn03d6ot9Vp+4K794cI1OEAe7iRIPmOlUuBzAgNXRQ5cfReqD80sAItcxcSYD/
	 X57bJ7twB09g7xqSUoUfwuDw9CeRSRg+wcSI+I/XlKgvHbxfMNoXPSOmQVYZCp8YX6
	 PWnxcuOCysrXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC18ECDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 06:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169735302867.27175.4282924895090728975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f0a809cb7e6bc1476c7c166430c02b0065645aa7eb2856a1dbc56a6e3a0ecbf
Date: Sun, 15 Oct 2023 06:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697353028
