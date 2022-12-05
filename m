Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1C96112
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7455AC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670254254;
	bh=aZuXLawW6vCdTtxniGs7nLg28Mmbf40yrIY+Fb9zrNg=;
	h=To:Subject:From:Date:From;
	b=KuC4rbq7DkVpWfVBdcX16a34KUwvgeUGpJyxEIR2Bwdr6gw4JT8RlbWGd5WkJzYEu
	 GfTocVLI/WuqaVUi//esBdQ0haL5drX9Ij+PVEJhCuvlRVQlZJ/P5sUOrGuMQfJBY1
	 omSKeP82jbnXs+D8PsCSs1mdudHJGk3YeFWrjL8t0HFs5gjwR+nciO/BjvQ5mPm85j
	 hZaVmLbUe7KwaA1cQud7nf7N/ULkfTX/ZxBbLqaGYdr13yWq5DeoZkGPabWJDoWe+j
	 6ltE22dIZTXFdUNUOmCH3RaQYI9TaKbDgVXfsY2T+zupWgF0MrustsEsSjTZYlY3jV
	 lNPRyk00Wikrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B79C4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167025425434.11639.10696218567456189677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56dc4a58865161473fab052cce7c45967b4ae095ef980cdbaf0fdee7c2011c1e
Date: Mon, 05 Dec 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670254254
