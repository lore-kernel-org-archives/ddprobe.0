Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716028477
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 21:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE3B6C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 21:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679349426;
	bh=95/uvmh7dVvvlfDKBsFrP1IQHrHuF6twHzQnNrXGzZU=;
	h=To:Subject:From:Date:From;
	b=YN9WfaxYaEYb9y2Q5mcFWqiVbABCk2uDfCz2zViti8rSNBdckP97ljiqKae7svB+h
	 Wj6yG7GdKNiGw5H7Xtl847qqp5st4Rgirv/sTWt+aQpyGZxC41Jr+St9Y9zG9BZg9z
	 UuFcFgCNUUEpL3AV/KjYOCD3XOvvEIQyF/PcXxR8Hhyp1KmwP1RO6ttLq+dLhcgVxz
	 h2dc1RLJYLqK8KpzDoQyezuf+Jg/hxnXkhnbZsCxFBa0TElXLM0BxiNsIc+qLRy4RE
	 5Xd6KuwHgMrVr6aPNdt/N+/5sgJacVEwtdq0N+/36petS1OVqu83D9lt2uZYWWEuWs
	 GZipf4Xl87Zvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C449EC6FD1C
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 21:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167934942574.27129.9054833591762532590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39ed6f36020459e4998bfd4b79b23ec61be9066b6d310baf58117ae4782f2dda
Date: Mon, 20 Mar 2023 21:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679349425
