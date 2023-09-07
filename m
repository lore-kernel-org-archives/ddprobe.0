Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54ECA6AA5
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 14:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADACC3278E
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 14:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694096048;
	bh=0AuGvgKUbraKw0f+6Ftn8Qe7U+R/uSqkGSvoJZ0Jfcc=;
	h=To:Subject:From:Date:From;
	b=te1W3GrYr4g6BeR1Yz29jlDmFqlbq0CDgTzTt3pqvfrb1o1Cq+mgsShs5VmHmc5+w
	 6fFYgtFz+2w2XhJx3DiPGU/ruSLqbZvTYfiu5EtS+oIflup7FIWmr2JGVRnqt5JFFS
	 L+fYlXKutK7m6Iz1luUol0Izh4lgoVoz2/AmP6f2OCiiNrkYWLsM6WJpigxIwM5hBN
	 rFPbHJ3FsWQrCi8eNjVjtr+2dcflRSWe0LCspEmg1Sh66ZY9U5dxRqHl3GmOaoXt2F
	 xeQtVvOICXCE96Rmr7o6ZF0p9VlebvfJrG0Q9A4sX+NSIgoeWOnD1CIIDJWiR5u4HP
	 JIKhwd7iUfEwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B605FEC8731
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 14:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169409604873.22605.8245317566793715004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 906865f56af1ba21a6ba2b5a532a8b2b0ca1918e4cb666683c68c7d621792cec
Date: Thu, 07 Sep 2023 14:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694096048
