Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63111861
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 22:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68D60C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 22:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666909854;
	bh=c8MXf+BszYVeMzETh77WMiJPULEJrxVwvsasUCIkzsA=;
	h=To:Subject:From:Date:From;
	b=jqGexTHrbUDbWoJT35XA9cESJnPR72ywidW+83A5oRJFZSfB2imKyK+hEAgV7oC1z
	 YWYhX70BDPwzdaDLaGWWEGjQ5rPaQPY/fYf37uOhRLr0CdV59krfCngBEO8nmMughk
	 LDvGkF+/GF/ceqL8DgTBtS0ULLxrz5DCOpg5ZtCFB+OpIvInENQ15i5+AgVtZ9IX5v
	 C+lBg3HsvES0ZL3DuItGUbFp6YJXDcEjxTQhFu/ifr8RZh1IYAKRvkxjh7Nq+41ub/
	 bA1IPJDevU3AXC7ERY0wBCM6Id1bXlBymDWNbr0uhSDw7GP4D8NdUUioFULh0LYnJf
	 XolVH/I0thhuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529AEECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 22:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166690985433.27158.10017933164417370179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789ccfc4011103efb3efd9f7df18cfb97379905e3d3fc91933ca8a97363803c9
Date: Thu, 27 Oct 2022 22:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666909854
