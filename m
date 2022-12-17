Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A4F8F42
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82DD6C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671318687;
	bh=1kyhDYpGZAU9dBikGdHIQoaT7j2IN6JmoHNwNlKGIFU=;
	h=To:Subject:From:Date:From;
	b=tsXRfM88vaXzgOam8yRIHfqwfPEqyMdwXM8Zbu4pTYXi/5tAAEoMSs1mFpNhBMF5r
	 R6MOvWr8EJuA6W7B8wRMkNZC5jQm/NU6E+/OPLPL7hwzZFAklf7XscPzj/BAxtlWxi
	 mZbcisCs1jhnqTXHneKOKsrJ/+Vv2U6R5VAW/k5q48hx8v045OBC3gNyd0oZYUNkyW
	 LLzCUnS2VsjtNX/oueO+y1bkk7o8fVkRDM6THtAiT0C8gUlr72+WlbxKx4JG8lPD8Y
	 8i69H1OmDKQkjvGRYczuYUEOYPrj1pi0AaWWWx6y413mD8YyXl9OAaCKXnnyr60D39
	 l2/UTxwjVmJuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60700C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167131868738.16686.13800287682381342550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4e3740363cf4dfac4dc10fb15e2d3ae868227b6c1ad5a25b546b05b8e08d80d
Date: Sat, 17 Dec 2022 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671318687
