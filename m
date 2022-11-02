Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC53C2582
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BCD8C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667429454;
	bh=5mQGutS9HmPpvp5xumbegr4avbNB07UK3+kZ2LYbKtk=;
	h=To:Subject:From:Date:From;
	b=tsrB/2kLYUiGWCUl2wm5E2j+Osie7Zq+xOU9sJc76abbv7681k7iutZvvZ/+6o2Ac
	 X9gi+0gU70/rusvke7zWECTJJtWQHCIxnUdagkTK/jrSjrrWjkQvWSzce4e/j8rsxt
	 SXSqB0S7kAHxewjV4gvVBHLteIL7EDHZlifW7j7XyBsXrkNFy15vw7Lu0Qo4MutmCg
	 enH0KTpvNfpommUDzG3MNUFr5RdGy1UmzcQYxXXeAaxJRpJLZcWBy6DWv//NCtp2uK
	 hphRjTZmKhXyyV1RlHBIZIRVwRLLS8cHCmdrovJdNFWGqEEWYK2/6hRBl/G3Mv7n9Y
	 eEjejE1RXsH4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F974C43217
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166742945432.13299.14332477300480825842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f65b22c7ca624e43023ea31eead2658940f1f7266c0f3063cf66267de92a78c
Date: Wed, 02 Nov 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667429454
