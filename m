Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C48257B
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E7ACC433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663887653;
	bh=BcfUZ0ClGvXQvwkLI4HATdEG/YvvO51nYE4lFxgEmms=;
	h=To:Subject:From:Date:From;
	b=VjscEwg4xnAvNsHJmOFdfDQ9A6saUosCnOdM9YH4B8m36+6JhLSlEXuzXFSqVasu7
	 xjvEGwfyphMav2xxGxdGaZ/4U0L86B0oT5REwJSqxz1Fw0ULuHjUvdbwdRhVjtMDln
	 82fJXC2WiC3u5AmLa6ov3t3EIh0rhYhS4jCGYJi81yUBmynfsdkxSJMxswbKUm0i0C
	 fqEOCuyLZpo+64ylTg2UL39hlQVGYE1uPJ7vR5yfYrTeXyBVpA+uptSliTbNWXeGAd
	 OUjyV05USVB4dH28RrD2igCGYEqqCmSgX5eyuOoiRO6WebGQVXUsDbaqWhc4ROFkdI
	 o94OECHCem+CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F0AECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166388765333.19494.5918708470883006170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84414a4adeca978af56af5490c8025d6d7d54d35e8b6a5cbb80afef9207d1a96
Date: Thu, 22 Sep 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663887653
