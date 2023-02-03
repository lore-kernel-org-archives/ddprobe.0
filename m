Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47942AD5A
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 20:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E589CC4339B
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 20:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675455365;
	bh=ALLukWdg1Os/uvNGFMuVxjh+lXG4rIfVTeU0uLG1f34=;
	h=To:Subject:From:Date:From;
	b=qhVbOCTzPu686msxGhpFjW7Umso59GNjLO5U3cxpASlCLKjKdMb0ZQ/xxlzAGuOhM
	 kXriiroHrar6NS3nc3h6/QYwqLR+V6ISKskMek2L6YPk6YW9sec55QW3ZR1XLhx0Sx
	 O2/+D7wgR+0cGtp0BbMSBLPUZyCiM2SVFRGlwjzuinxmz45ReCBUmoftknIGF99hw3
	 Qjy+xW4RjDHsyZgOLbxHyOVnL3Y17r04LIAx7PrPRVkOaNJG0t7PRqi37eHJmEEo3X
	 d87Phk1DaG7W/oD7TxPXt1a+JhvwHWKCvOnNV0dQCmyY8djyXZGwEIrTRXxnRMIEQT
	 MuuwkCpq70UDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3DFCC05027
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 20:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167545536579.24043.12794397462921235633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a434cc1823126066b00aa1f82d48aa34a59c8cce66232d61b082ab3b5edf7dc
Date: Fri, 03 Feb 2023 20:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675455365
