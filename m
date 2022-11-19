Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19B01FA4
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC12C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668852054;
	bh=yDTFFqbkzjn+xUBU0SodLphIYx4WKfr9OQReHeaf1O0=;
	h=To:Subject:From:Date:From;
	b=vM5PEKbqINQTlwA1/kWWOtfOoPVr9AQcEeuoq/fAxxCdcK0LVNTScqFryVrKcVsd7
	 cqngOoxxFII8cXWjqC3UU+qYjq8MSC5bVZGiGYE4NfOTI5XWesPXuLZKuqcRpLLQOy
	 uNAx/WZcx+dwRLWlDOIK+guZiPAXjdRPAlIwq+83klOm96PszO5x7yralizyHgkJ41
	 9z9nCQtjJEKDlEsL5EBB39DzS0fLJRVULZSQcaORTYBQi4OXMRsjqZr6TEyQRGKXRZ
	 Q36PFykz/DUiPpYa3dlu1bCR0eRUwdVFHp3G3YPNDAa31qGtuhFbOIALrHo+9q9TzR
	 tE53cz1HLBhsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D39FC433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166885205437.10201.4094971781970556552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 808991843abba3a123d61838741de638a4cf04f09394cc3c0c1a92936d0c99ff
Date: Sat, 19 Nov 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668852054
