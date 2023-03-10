Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B01FDABB
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 21:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E19EFC433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 21:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678483505;
	bh=Wqw0ZIWfow0ZBZqhwXM2ZLkcUSUG36VhdAkZOdMOUpE=;
	h=To:Subject:From:Date:From;
	b=CYDHOa1Rw1iSa4QN0h2xPktGaYI0xSo5FJPFWsuIaruTJiBS/4jfkyi31wd+y6kyz
	 8yZ4GcxabAMXyFvjBtJKdVUhmLrOVhywlr/3V2UxHsD7B04iqsun15HB+F/5pQvjo6
	 NDDXy4exkIVAgwtRr8pN+mYQ18y2vOpA/kv8f2tk5fc0HnTrACQSX8aKd4JBwTgV0H
	 l3zAKjyTIjuHJCBRD6MZdbXMd1CkUfNH9KPX56Hh06kctxIdOIUHEkdwyHTN3rYKKz
	 SbTZ8zx9VjZGm9DSXXOHQ7MgvTv6hihlDri1KQRzGGekYosG1wzgdeMohS2g1jnoq0
	 rSUPxcLsfkF0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE8BC6FD19
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 21:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167848350575.5540.13016497425366796981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01113734425252d610505a1cf5ade667e4b6a8a6bc75b92d0d3f7236f4e40709
Date: Fri, 10 Mar 2023 21:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678483505
