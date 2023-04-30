Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB0323AE
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 12:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12B76C433EF
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 12:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682856366;
	bh=tXTZVG2n9BUtZaNxlKWhQ+/r9aqL+1PU8otXvEsDJPg=;
	h=To:Subject:From:Date:From;
	b=I6I4jORsvlhDKMCIqck6e+uqs6IPhwjr/TPvdn1wu0X3uPABWwxd9zb4+aENur1/8
	 2iI6IhrXOM2kcH7Lf2BzocaENKgIHiI/eHE0onZXV5mGn68pF3VDXiGEJZRvO4Bpkn
	 hJYOmfaDCF8xOUI9fMMKXsOo14KwGTkmdIVFukH8e6JRatB+lQiIQUb0op4z8P4CL0
	 xuXtkm+2rfbEhXebE8phIXxys6Ea9wUI8UXbZdoGF+LbUvwssR4OCsDKcwz1uN4sLf
	 t1wqmTjoWyf8wyfVTHNj3WT5xnX2FHw2v+Vw+AmgZ6v8G/vklNR8S9x7jLCAcsXkwC
	 Cq2HqBt92gorQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFC95C77B73
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 12:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168285636589.4839.17040366437226386525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e1a46c406b1af69a90b9f07c06c20598bdce5236b2dad5bbf5611acf937f72
Date: Sun, 30 Apr 2023 12:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682856365
