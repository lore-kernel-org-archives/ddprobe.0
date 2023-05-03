Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5291ADF61
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 22:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02A0EC433EF
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 22:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683151206;
	bh=YEr05daykFeG/WS5qWyBO1+85H3BmhKHOdJZ7Uzkyek=;
	h=To:Subject:From:Date:From;
	b=VmHRLMwVMQKTwbq6Ws2RrGsu1avVj+D9WL65RHisDUtYbPHgsjicWuBBpz6fIxkSz
	 48CqWiPG2Z2xoWqzDHEKfZuCa5H74DJy6+VJAGmZPNRBJMzJAoKPWd358tnRfOYRlg
	 rup6/EXDmDZ9KbNwV9YfOzGbSLpavvL/T9CyGyAl+LGmveaYhpWrUz3lyl754M5/Wg
	 oQjxlqMqSQwD7zhmbd9bn6WSdJ5Tx8LCQLkIm97Wk8zwFqkKX22nRIurJzcWgPPhTU
	 g61PUC16XBZBuqVXRXfL8DPrylr2CR3Mc+m5RPsKoXwG2sIYuyAEjPHJXGRYs8wTMJ
	 pCFQVqzLdrCyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D44DCC77B75
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 22:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168315120584.10920.14338320190345825950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3fbee682496f75d15f0257d7b41d83378fdbe1aad80b1e848d29a23b7ff8f6d
Date: Wed, 03 May 2023 22:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683151205
