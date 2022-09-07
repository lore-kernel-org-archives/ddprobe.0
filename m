Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14EE2904
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68E9BC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662554453;
	bh=09guqDtGcxWYE50dNbNkurU2WgzLusq2k1nqklYFxAs=;
	h=To:Subject:From:Date:From;
	b=ITaTeYF2OT9uihkSNQaRUWHjSuK9fLCnqhem1OeMFCvgrtkBqYJVJDHb5JIz2Pqwi
	 oSsN87FjZXcR2/Lo1jUA+F8A35xO/fjIz6qSlW4QFgK9vggOqbCZvtWzopXSaRHeyP
	 GzHwaLSJ5Qq0a3vkes4HgfUCZzH1vPNcTzt1VjnSXWKWqbC8xKychCCkewFkWcwSov
	 h0UhQFFfHngqALHOiEXBe8+VGeilqM8VMuIvW5FsATjPRqzW8sRRHebpRwzEeX4217
	 cJSDEoVyV9fDvhHCskYerD7Hnc2zHKwfX9rHdybM8k0rPlss1NYZod6jZ5YtmxM5kC
	 j4lweMd1Mc6SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E73AC54EE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166255445331.5145.17614268253664112043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d95da22dc11766df3cc69fe266ceb09e63a9ad0dab3f3a9aa9eeaa099fee93f
Date: Wed, 07 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662554453
