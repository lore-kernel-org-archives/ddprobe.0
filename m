Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C88415494
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 09:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4A7C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 09:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695028508;
	bh=r1iORu4qU4DZxFXhwKh11/FVgrrfN6IPNJgRwVHLxYI=;
	h=To:Subject:From:Date:From;
	b=AyR4Af9/QanUj8F/hoGyjQztK/Ja/TN3eTy1Ers8QhTfS7JWHgHBSWTlp6zqC2nAZ
	 CNuFwzEPCF8SxJHB9XmnVI+eMfwx+vT+DD2wlAWr4ooLf/UeBsc4HZSZKaWiWZbEIL
	 rrlbXOH2SPnXBhnXgkSecpjZlkzKH5WNRcjXtvVCehATfD3N+hq9Nkac5WIuQlmp72
	 9tzmR35NBYrzS/VtJReBr/wm7Tt18PYP5btUtjXdpFF0ZaX4CV8nHQmRygFXK7XFVh
	 aMlRNwvXcXHEQjj1Z8YCnGbkyENbVP+IONPS8db6IR6xBVEwYxh7b9p4aNIKoogkdv
	 OEMk4eEdZjO0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7180C46CA1
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 09:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169502850865.16221.4209324041789545084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e58f38869848837f893d244ee37243fc2be75acd35760d1df665b7f4ef4ba82
Date: Mon, 18 Sep 2023 09:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695028508
