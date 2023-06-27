Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E99919E65
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 18:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35DBC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 18:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687890188;
	bh=epLs3Y7xJXIXxZ9KfftCTLzMc9AOHBnARkEE4Z9vvEE=;
	h=To:Subject:From:Date:From;
	b=qfYpRuPRUUoFEgh2hQwozhSTLr0qaPHvpkKpIZbbUQrsjZg4+3/LM7e7L20fdThrk
	 gO+zQ07kbyFGVd0AQIJE4viKhzog/HtjzKlsLEi+VuAl0lU774d2ddXAtFGt0MsGzB
	 WNbg79CjF3xxn/Ub4DqqLrgmjS5RRqVGBMtbYvcJw98xkD5BLva9oWxnJoI4G7H09v
	 /RF3unHkizlEQvxZ7NBaG7XIhkLa84ISrYP+1Nz6e+/9f2RRMlodBlC3N/gXfhgkWW
	 PyIsSywjQcbaoVvI6XcZ+4MJ8X9jlZwrqwTaLrZg6qw1riNPLVYdzfR5SKMi5evi+D
	 wLPi0Wx1Ja9Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDBDEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 18:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168789018871.1743.11019315291332829302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d67a9c96c4ed92deff232c2606f383708208a1f14f29b21d586935743d9fce
Date: Tue, 27 Jun 2023 18:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687890188
