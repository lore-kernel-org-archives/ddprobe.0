Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BC419D
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 08:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 053AEC433EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 08:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678006026;
	bh=9ZcvcgoAV3sYg+p5FnOa4+D2pZi0muqGSzfoUuKD+p0=;
	h=To:Subject:From:Date:From;
	b=upzSPwLbdSsXe+neI6FdZje+5WgyS5bi+XEK0huLTDeYi6dztGAr3IoUedfaHQ3Ys
	 V3Nlk2IKc4EvHlM1YrC4iTi/HtZo5b/ioHarBvFCMxw/kyY4IktX/gf+VWL8PycUbF
	 AE6T+7g+0zbYWIvXXKgZQB+lLgg4VRqaLctoYiWF0WvyQH0hWPFx7xwB86yiqXrU7b
	 jtGwsfnQqoapnqhklppApxIC9nym3Va0WM4f6LLve7YscK/LJrDFOEi08pQJ5kjAMM
	 mQPhxFo+l4GWxFNzfs+oaBE5MyHCGOnVdXm65Z6hqTERzCyvF43b9GwbgCoUA0YUdq
	 wqCq62uF477ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF41CC6FA8E
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 08:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167800602589.7156.765497712846815123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7135f815586c8a5d670997ee1b731e78061c12bdd1643a22d5f104e2d73ad12
Date: Sun, 05 Mar 2023 08:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678006025
