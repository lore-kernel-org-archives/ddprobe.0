Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C72015ACE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 12:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA604C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 12:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686053526;
	bh=GyQJ37o4oyuoeXRsqepm2/gxK7Etk3KITS563kEhTT8=;
	h=To:Subject:From:Date:From;
	b=Yes/f9oO/bI5auYf1FYbMc0DZknp+sohzKNPUQkiolpZ9hfgcXhvfxEIeLSXvb3YK
	 6DctFdf5qyLt5Z4/Z/UmNeGV0QeYtgpxCU6DFuth1hmcAtzPZ7Cg95VWGrvmAg41+Y
	 /2/KY4SThjMZqQ8ZNHD8zWqkaAVdJFSBH9ZCm2odjhPDvMS47p3Et7f+2APser05xM
	 9PYWloCRQGgZYKU/02XFqpu7urvDvW9LJJArClWNXLLhpE/+0Fk/ulnKV6qV78Q6yX
	 EbDfKfpS18HZdUtB/QbYrW3jt2mcARHpnTL26TLxgSV/LuzmNRX5Ytk/Ygi65t/tsa
	 gjTVZL4eku5BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FE9C77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 12:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168605352580.30075.5560460369373795770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c1e94c7f880cbac244f329a845eadde5afcced87f8d3cdca1ae2ade6e16ede3
Date: Tue, 06 Jun 2023 12:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686053525
