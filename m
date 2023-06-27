Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431D2EA1
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 04:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF1C7C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 04:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687839188;
	bh=5eKegv/FyMokKQtSFzmUAJ0cX1GyNLrw4pBPc1qtLQE=;
	h=To:Subject:From:Date:From;
	b=JdNXjWmIP0HKWYArYAXiSYWaKLfvhKtpBv+XBYMHy6KEf8WmdcF9wTkd2DX+Spslh
	 4csSFbdBh7ufHKTyc47RM7DJ2xv0ZdjDlUx5EIq+m6QHA32XF057DhrGCAsOekWmM9
	 Z5wHNCpVjLeOqsqFt7OaNcIYjYId6P1vruKDZeiBsmOHtFZHz4uIWG7fu48Pz3hjSf
	 q+S+dY28ZobhQp7kyTaIEQFVH5esSfAcrTIZ6q88PA7OdSsrUi+7edD7iboVNwnhsY
	 r/WyUVLYe+78A5gaim/vcdi1/kbgR5whq0w3rlPp9PNLdx/SrPDiZnDtKfEH9gIb6T
	 76Wg9M66RU1Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4396EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 04:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168783918866.29981.7379143011043122458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7abd7d02a8ccc6070122d7ac0260f3104dc6193cfa518fe53000ba687c1e220d
Date: Tue, 27 Jun 2023 04:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687839188
