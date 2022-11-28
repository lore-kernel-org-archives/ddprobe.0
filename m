Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD94AA461
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75278C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669659054;
	bh=Z697z72dr+TFdmDM/IuYSQu3AZIOeN3khneNRLYJuaM=;
	h=To:Subject:From:Date:From;
	b=XzDkL3cc9tJbZHebP7oFjQ+IRKU8kPEYG9Dlj/7OLJKugC9SDm9LTQWhiGD3eblnK
	 ZfRIYSESLvsKzKDjLFz4CjJ/ISjloCZNnz9rhp0sLONfHrK3eYlS5j3T1qjHzQgIbr
	 aeZpY8P37nOArw7sma5S8z+5ionv6hVsyTqFBanpijM7+mhNp8uvsZDzpuSigWOOYM
	 2a1UgwVel9881nwFZlV5xT13XBwf/HhIGPABjn/p6ZOJOgewbH3Om+4Mh+z5/FPgjV
	 dii/zbjKC96EdkyHKXdC0AucC3ZYHvKXjwavcS0dgva+hjXXoTHB6G+JSjVlFfJFEH
	 LIV2fBQPN1sMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59900C4332F
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166965905435.16060.18314794178091297449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3453f804ad19692b6d9443708eb0265668f37133d8b957c01467c96651f83e
Date: Mon, 28 Nov 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669659054
