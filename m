Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627FD63A2
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 11:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F21C433C9
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 11:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693221248;
	bh=KHSkHPlxCJ0UHX9VMKIqkDWKZJ4q+R1RGM/O0hIMfjo=;
	h=To:Subject:From:Date:From;
	b=VQIPw0gp9B48nZDHQr6NwJQV8liD02QKSUzWnu/vgeuDoftYpYFr0tmEvrm/KhZPu
	 kEJtC/Ltsxw3Rc5byKjpwLhELCaR28rP7P6/oFTsxWsFVdl+lx4ZgA7/AnmsUtW9ux
	 XqjwlxqOmS0Q+W1Wy+qI/jrEfDCK4H2ot70g0I5h6DYrzymz3MTniMN6+gVrmsSu83
	 jyQ1fJK5K71Ld7uk+uih9DD+AlqhmDqDFJnyjxwWLV+DClWwWwRAy3w2JArqmSy46H
	 jhczknR1mKuLB6jqzUNaniL30H1FrwDwXuCCCg6cjIFUAH+3DJn0ztyEAimN74TW02
	 /FovoPZVYdm0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB612C83F14
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 11:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169322124869.18962.4128667151494964338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1d89bc73250c369b70af1a607d175ddfd9ebd7d22c46cf838609e39b718755
Date: Mon, 28 Aug 2023 11:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693221248
