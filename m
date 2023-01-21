Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C67D748E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 17:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8451C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 17:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674321125;
	bh=xZQSXwVYK46U3Yxpr0hTDszX7+ij3f9omBZDmt/yb/g=;
	h=To:Subject:From:Date:From;
	b=Mczi2su+OJnYY8Qwp8IhB5qU5WPVtceGTNzO5UIj/x7SZr+r6SD8cdd+Al/r6jXn+
	 d0Ti14HKcDQl6FeJ4jaYGEfj43mlil8EmhUk9O3jn5kRXaUjBU1CFdJKtELQzDtJ5j
	 dstJv+Yky3TQ+3ZYNMGkiTeMP51RouXbwOEg+ANiruaVBSgP7e7UzDxIpFK7n9aJcr
	 IkGo6wBmTPeFJxb4UzHDrf9czE0NsMXDIZInowvAMkZnD5ll23eL71m1U2N8uKg5n2
	 iFHjAt4qvaPiEzTYcQ3rP9g92fdPTwp8Nt18vq7cQRkEN57md7TcQ/sn5DSCWiQjDA
	 LFo6hYz33rN7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A0FC004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 17:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167432112573.27168.17018376156082591123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39c03cdb8eafab13d12c2ccd24ceae3e5712577cae9f5555a2a3a06063874580
Date: Sat, 21 Jan 2023 17:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674321125
