Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA7B37E
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 15:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D606C433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 15:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667229054;
	bh=LpfsJg50KuCVQitiyPMHfYbCCgSN8kWzAKkgYGbrEQk=;
	h=To:Subject:From:Date:From;
	b=P1odqQf/sWjmcOs/xCqz6XHNOaDTou1BbzXpjRQYEO2rUT8xFAMkPFiFvVuJffYz9
	 GMbB36P9oZ1KlsvuA0jbiB61tchtHraA7VNlNj31B8LNUuZkjMOkgRCUOeYC4qVEm+
	 GGTmDLKYrzX6E2dkcJblUPz0H2RLdfXup2C4lPRQedhRS0q8jIVu2VgH7QaeAwv7IJ
	 OUEpHYi49/ghGvpcxD0Fe7NLSfyvP/CvMOfEc/NAdm01j8d+CEc+7AfMbm5p0ZquyF
	 LBQ415Riw8Y67/qfEBTdO86Mf+RzKR+4kgy1hCjXVGD3TlltGNWxzvwILe5pTVJEwY
	 kalJ76MHe7ROQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 608BFFA3741
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 15:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166722905438.25778.4752526477791826323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e65d53091a2f11fca4d877f77a41ca0633043fa1f7cb5d0fd90306f9a7de9c3
Date: Mon, 31 Oct 2022 15:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667229054
