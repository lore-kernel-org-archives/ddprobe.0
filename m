Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DFCBA32
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 21:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D544DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 21:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677275705;
	bh=QzVdAepHu3nddQiH5T/s1D11uZm0ZnJWVJ3yO9dBAgQ=;
	h=To:Subject:From:Date:From;
	b=j9LumoNxK93iuTHUl/zOzywkHqWbdXVF+6tMujdyNwEQ7lVNMTXPrMn+jqY6RUixh
	 1Ct5e3gbSN75lcEvyqyR801JL0b2GAEEFj04UDILGyzbPnVdruTBtlvi8DNyKMAor5
	 Z6kJcosuRyJZaDpQzUTiNimarVOjc8bmEeBAudQGZKjHKXmMUzxbAB+UoQf0ZMMROH
	 MWfFqiO4t5FYwJaCLd07nzcPo+MUPK8c4OO9nnaT3UHAeII6kluutYV5aFOX5iNXJv
	 ouQYfEKO4Y8RhJpFrcX+32gbSWLS3bJPzOSutuk1nUFIOJAqIRfE1XP96PaQ2QgGqP
	 oE+QpEPrtBV9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB21DC6FA8E
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 21:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167727570575.27180.3750179524594206698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7f75a36a23225860c2487b66799a29fa9bcadbcfd50a001e0f8693aff750e2
Date: Fri, 24 Feb 2023 21:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677275705
