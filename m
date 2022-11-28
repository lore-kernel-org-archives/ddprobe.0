Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6D4361
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C3AC433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669617054;
	bh=mG1XaFaqqD3AZrn+7UVerw66fJHsoX7yqP5AdImV76k=;
	h=To:Subject:From:Date:From;
	b=p83mvgVaJw5mWrPoVamAPvMXg5nYsNqwIKfqsjeJqi5bdc6a1FCOtloMW86WcxEoc
	 h0H7i0vBl8sNqH5dJM2FpGELZBHgpFw/+33eQTzeH+ZUJNdzH/DPOHRkB+gUxXOjNN
	 FpjPAutdNlZCRmD3MiW3aIPyieu1kkj8SIf+AaTpcJjKc3GCbtbuZi7QNmjroT/swF
	 U/GxWkP26NnsWndBwVaTY2ajNqB4xQIPvZu1UChOpTNLp5jETfq/gBOLHVxhhpahGX
	 dRrpHa2xbUeJ2KGUj9bcYqjEmzwrN0wdNAxMnKQznyYZNqmkeuB01AWGsS2aohzwR+
	 Twd0i8KVLR0sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B0E5C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166961705436.2756.3997578838678701369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7061ecf2ae6148f9312d498d572a22dc76863349544214256a8e46c20a649747
Date: Mon, 28 Nov 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669617054
