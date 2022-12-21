Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C9E1C13
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85B44C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671633687;
	bh=qcbPlP3ghjsUHosPo3nzjozp7oWgaXI5nJSZ/eK/c9I=;
	h=To:Subject:From:Date:From;
	b=pl0f6B1YqloqEjkMW24gC53b8glYT0Tc+np8a7+hXcV5/fnyfJSS8Y/UcLvPWucfu
	 YSXTgKPB4QxCGkcN/j9snghasHehG+KFnYlKj5F3GCoo9oaTQnj4c6zlsM4SCNVGpk
	 Xcd9Tm8WsfaG0lZEgp49cpRs0xzFMxRLbt6XN6IlwcNjAZYj13b8m62/r2HKUPNH6w
	 ykhpbsTH0F6kfjVuvgVX8cSxEB43NoMDCZ/oEzMbSUeXMNsZ2OT3HomFI1IszdecEj
	 qmVVO60RJEufKBgNqwaGRBH6v7xXJnQT+u1f4BXePHPXtSIARDZis6llG9RB+cYP5d
	 UscqOGE0335Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69C2DC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167163368742.1795.1477512934043759387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24c5ba5ab63f0459cd7224a5e81c9429b3eb07fc9c5bb8208175897e9ca2d7e
Date: Wed, 21 Dec 2022 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671633687
