Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677331E1A3
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 13:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF139C433C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 13:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691672588;
	bh=4E3hOwlrBwdWQ8WO5U9V3NsboAG1nzL2SNM7iHB7fhU=;
	h=To:Subject:From:Date:From;
	b=IJIXF8kZjJkzrQ+gyWVhGBfKWzIGHWBnijQjufSnzGvyFmTXlvtsfdPmf9LcOPMe7
	 SqFAGvS7F7eOZiWB6aMzqdBlTwRLT/+IUHWmDoOWPzjsFw6RbwKqIyq4PayKlMLWFL
	 pIkv5SmG/MAXkK40QYU2NjBLcSdu0goFo7xJrB//9YBG/+EKB8lKgE+bojhwnMFKEx
	 RR2Gu2zNjay4bIWPZ2nW0OZbH2WHsq4iDz565G9wKLLmYJrp2IXqqbKZlHSPcD/brc
	 HoarMXtsxC9VmmmL9SB+m1B+5n3szmDX/wL8X3zTeCFhr465fr+yKiQOz0OD2zG0wh
	 hbH5N6Amz7KVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3553C001B0
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 13:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169167258871.17756.10730296708724169067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4068566c8bb53dcca490bfa88ea560d80e3f59bd22b1cda46349861be83cea08
Date: Thu, 10 Aug 2023 13:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691672588
