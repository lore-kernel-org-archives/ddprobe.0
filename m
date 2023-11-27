Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F202C199DE
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sM+ZtVYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC89C433C8
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701084496;
	bh=uax2uI9keBy/bzYRODqD+15JCP2hiLPhyWHBilJTiwQ=;
	h=To:Subject:From:Date:From;
	b=sM+ZtVYJUqTyd/QgIbbpqC/ysUwwE3DUgOVIC1ln7Fp/p1uwAbjvgt09DO0UBghmf
	 XGw6d8uZhFK+Z4+0RsPimbI8jbgk9zO1lNlfP3odQ5mtWnrIPpuIpFN5ghzCLBLQZy
	 h8kJ6hHErn+dOHPrYabptEFXyKuNnuBbSxP0sW+nT52eHl6I+d+if177lzuFvOXMFm
	 T0X4vsf6EV+Qp+4WrVaa0I9PCd6mKPLo5L/96x/PQ0MeZHPFXv6RQ5is4+rDYi1iVm
	 KrHA/VT4CBDLT6Z1UgqsPdQuE+LaOEfZzIksb6HPnM9aAUmgpyc43Rb+mhRBiJstcR
	 UXh/HamM0MGAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B88C4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170108449638.23726.5023979463431615518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18271f05a74f34850ae2b81c90b1e9e21b3d50f097edb517aeedbea56f22b154
Date: Mon, 27 Nov 2023 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701084496
