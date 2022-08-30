Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B63DC3200
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B3DEC433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661865053;
	bh=/y4j9ShAiJKx1wEn8wch8LyvXeCEKbeDXs7Voiqv6r0=;
	h=To:Subject:From:Date:From;
	b=G00hWFrwT/M+Y8O5XMhrkUPPSXOVB7tHXVn5uLqFQHGjpa4qrBi79JgdZPQ6sw2Ih
	 a3ymsPVts7XA2JklARlSpb/FcL/VnvnqY3AkRLS+v4UxJ8zgnp+U8ZY/PktYhPqexL
	 alMRPEF+v6wK8rKpR86pgY/kFrNIoHreWyzBCes1sYuK+jfHVXGGi4d4b5GW5UkgJQ
	 Ty+9sWdyYturOU9pwXm3O9wcWpg//fkDVhRAI0r6J2k6oFCkck9cLqUqyWMJVXFYy6
	 E8G6YSNASgIlrOAnSsDkENHKDR1cFJFtTJJQmlbpIaYUUEYxXBy3FKkxDjH6EGSt5x
	 SqcPx89sIXf2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5408DECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166186505333.16298.17489027800342213277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44a045276e5ba7ff3de465da3e846ca02d81a28638c8e532b88dc952fd1c4b9a
Date: Tue, 30 Aug 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661865053
