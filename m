Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D4C7C
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 04:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2DA4C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 04:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681447865;
	bh=BnkKaOJKd8gKS6V2gOyD7YvSQKzLKqzr4uMsWgyy+8g=;
	h=To:Subject:From:Date:From;
	b=ftXxN8Ldu9Sl8923HbN7MGPWsXKnc7Uh6dkePlYQ5t4/eKjgaYrmcNByX1pdP6gAj
	 V+T/xnC8Ae8htV5bRhxiLcWN6FNW2ZYjGo7B90qrBJ9tY60lJiDVuITa+IeDxT7LXJ
	 +XZO7eXTYYzZvEKu5gnZPGQqKGH2pCR00QlgdHajNKNYVrvDLJUx3cBwDy4TA1ugAK
	 jxypTAPTSSIxYSWbkayUNxnBH8pgjfbgkY8thQsqsXwLxgSV8ucqWB0s6Fr6rQOoBC
	 32V6fCmE/DI9cu2va7BWcTIYTGhI/yl/K5KXbaqjWVVEVbt4/ihOt/a9ylhimXI39R
	 pe5RvmJc7cNGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7199C77B6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 04:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168144786578.2079.11665947649439549463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bafaba6bdd85fa3b7169a20ce0f8b32a5459735f95e33f396589712ce79e0e8
Date: Fri, 14 Apr 2023 04:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681447865
