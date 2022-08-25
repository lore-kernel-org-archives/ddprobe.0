Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3AA33C00
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 15:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EAB9C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 15:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661442652;
	bh=XZ60SzMCUONiFcJ8YPXspcQb9NYb6IdbZEeInUL0RXQ=;
	h=To:Subject:From:Date:From;
	b=LwYWZM7WF4+UsByBoll1Ko9fHBCK8/Qalo8uU4yyXe+xD4JVZlkaI8tVi4T32bRym
	 NIZBKL+Y3ptyGttBQFQbEShX1keF02ndZrXdu1zdeX3uMF7qnFanPvqQjG9KsEBE/E
	 iC6oMPfuaBy4r2fsd6ERQfYVuxakFkpTn0N1hGuSdl3n5OMSc9KdAbxCdWXkvgwxqf
	 mhsrL34o1wmHlxd9WNqi9QH7pcNDhjz387s5QY7dcIcgAoXp7wjmX3cd84bPOymaF7
	 i6KZQadv3OiEgaMioV9O6zX86xXXDhTbDdj1ePT9as9IEwOtHF+TDANS5Y2ifVOUKU
	 5wXCvOSxGmotA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66149C28D13
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 15:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166144265241.24314.10540661414322723666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ef2ad1143ba617e96d814f9f4c3b4ead2c109defc4ce4b0f0f713e67b18a6d
Date: Thu, 25 Aug 2022 15:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661442652
