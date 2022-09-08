Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B10A97C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A967C433D7
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662619853;
	bh=FvpPmvWweJhRqU7yazwghD8atuwY1Ch7G9r5BhJ9m30=;
	h=To:Subject:From:Date:From;
	b=IAp7ICUavZKXqb5tFFS1PQD6kFy0deD6RUafxYJMcqDcrfKuZgUZP33rc4mZ6sVa4
	 SC/gY9d3Bk6YTyoS+tin0psxKDUcBLaQwDKSA8v/P+RDnGkMv7mXBpvdJJQFt3XXO2
	 ovlssYpu7Wt7rg3MebOOhbG7b1RdUpiscPdsv6F9qKuOJb84F6Z6hStE8oDgkthLeH
	 yCGjYzrULw/yuaE8NQAYg+k1vN4ScFEV7msNFquXET3zO576EdHuxeaOphKTyNx2kM
	 vH7hKhCV+VO2l1nrZKuRGiCHO1a87MrsRZWmci4w3iW/cqtDct1118InOvjVmP1Oq4
	 zb/W44iilVb8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5305BECAAD5
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166261985333.10963.694326688743126647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa2f08408cb29e789eea3b18c8ce1f99b019273ac300ec9ba619a57d7cd68ee4
Date: Thu, 08 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662619853
