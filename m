Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA16820E1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68C3CC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666360253;
	bh=LTU7ohFXYAI64NDArtvS+Pll5amMjNFfq5Fx6SZJRds=;
	h=To:Subject:From:Date:From;
	b=kBRzlfXadmHxFD0pKIiWc/V/21/KbiA9f2i3pglvTN4hZeTsmGmWI4Jc9BacU0vb0
	 Y3iUuzmK1UvddIyQF8MNnlsgLiu8eqoWZYBZKu8k4yj69hUYD7Z60hE57vnon42rV6
	 VTjdztkTaeiX/ekN5U1uOkbNsVarExu2FfH8v1zNZk/CjY0GFpJtDIoLG53u5fLr3U
	 idXwY11x1k9+kIl0uvDbExnRv+wYUImYMNfK5GIS3vXgdnwEE48KEudBHj3vrXaFX2
	 Z/FaSCGj3cvfmJhEgq8qQMt9uElXXWzE21i/fVatVwj9kSqkWNlZ1V3maORqN+ajuk
	 KGgzj1nclFFfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ECE7C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166636025331.32572.13517213132284828205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53225a686abc39bc6eea0065663c2944e153ce25f7bed0798a239f2b95901b95
Date: Fri, 21 Oct 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666360253
