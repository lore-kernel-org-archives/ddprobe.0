Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCF98F6E
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 23:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86CFC433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 23:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677886025;
	bh=Nrb6TGHccXtXr9Focw2p939QLZ/FjxUwm+36IW2ag3k=;
	h=To:Subject:From:Date:From;
	b=lQzMJm+lcevA4GaCDwVBrGkJfUl4X+JAugazP7miPEkM+rglE+cjW1grNQmcJEh1w
	 +cmTk6M0j79CpNUg0d1z3hI/ZHPB9Ruui7IHlcZYNnIFv2Qo3O5HrqD6hAXgpK+WIr
	 w6awMBwKk0a03mktg5aaDuwQ3EJUH91sNVbuJFIGlCWjMjtne3n1d/LgqT9oA5VUou
	 Zz1ODS78dXcmNpU7SBcRYNVhYXD2ZRnMuni4OI8Qk9I55JD31WL3sM4nVMQuwyiHci
	 COB4251/UdtsVVpgo4tbOYrflzrMZqeIVqPPv3xQ7tbqseVc9ldFDcKqGjDtNZ1bBn
	 2iJY8BAf9ZAmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8BC3C61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 23:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167788602574.22959.1292585068119943918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74acb1d72a3e9a76a50c8f4b57982a162139eb078982426a75640dd6374b8fab
Date: Fri, 03 Mar 2023 23:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677886025
