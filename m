Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2807163BC
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 13:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4489C433D2
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 13:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680787085;
	bh=2yw9jjF9nqUT2KodW6CaUl73/+kIH8uVyAzvDes4ZNA=;
	h=To:Subject:From:Date:From;
	b=gPoWBTXWXnQPiShGM9mb2nzEztPN/xH5NpWlE658b7y9wf4vBpjEynWON3651dVjX
	 5WXaDoJobH1G9v0Xc0Z1OC2F2Q8Bg80z2U4IVTfD2t26rZFLZ0R9B/siKUxcr67+Pl
	 mLo+ZzQm/ubpTDZcGyTINhKO0r4wl7guP5TyONqif+VCzJevZl8+T/QOg0jbtGa6pd
	 FpAKx7tBQMHiN9lsBZ1IpDuB30CbixLlZyf1evNIvjG2PYRBxl8lR0MP/McCbQQyss
	 hX33ED+O29bSvFzjdbZ7p1XpqWBjepGUVZTcdhfuYZ6+WfQi/0zhkCsdUFNhMnuOer
	 XSRR3FGrjpAPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BA6C76196
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 13:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168078708573.27269.11624169551467162766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff54da852f539792485fbc56f4e94ed3dfd5d7c357f3cd9de4274814c7ba4a3
Date: Thu, 06 Apr 2023 13:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680787085
