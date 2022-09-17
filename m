Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C297D46BA
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704BCC433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663448453;
	bh=SNXt2WtVDc3h9APy2H0JCIiqJaLuIJjyhJtG/yqR7qk=;
	h=To:Subject:From:Date:From;
	b=UTUw+8S797I/aANwI/nJDIW4ew1MYV8FHbf2H9mmC4/dVte4eDkyxr07n3VomKi+t
	 KVA5jYMFpmUKIaQpo8/A6i4TbgROINpSoHEYFzDbD1SfmL+qvXxmfRw2dC3QvuN0Ry
	 2V4BajTQbHlh6DyVNTpVnMK15Y7rL/JIaCHS7/elrf5QD1dfenjugHxXKfD2dOyiSu
	 9sQrMFb+oGd/wwE/1/GxvSOoYR5fuOWDAN87eBsvYkoNBb9pOXqm8YDW5iDjjmS/Ix
	 1XJ6855iVnqO1VMW8Nlocw4Pbvp1dJeRfKCthYLzO2A3/PN3EqBtNfLmbtEI7nGEBe
	 8jr7zFPhmXyHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A37ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166344845334.29138.9526592306926494128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e78c5b1b21735d78f5610b4f68d7a23126479c6b0a7e6a820b665e8b0bf87a
Date: Sat, 17 Sep 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663448453
