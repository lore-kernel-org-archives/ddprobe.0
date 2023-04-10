Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6713217
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 18:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9840C433D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 18:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681149725;
	bh=mGqDDjm6ZHso5tms71T1FKQk2ACe2GmegXIdfnUUcV4=;
	h=To:Subject:From:Date:From;
	b=oqnAYqJ/2+R4+QovPZ1qrQdTb1RWFBTkA34bQVTptv+CB8AHnHNr4J55eIul7uRbx
	 ZJjHAcgqtYOCNSZwKeJzBI43+nzNcnNm9RvYw705pE7ZmlrQZ9KsOvWHLtvy03DIra
	 J6bD1UjxyCQP1/xSb0W5l1BC6Ujx/0XcMD5+UV2x9iZiHNFULljdL/9iDY79nLozrN
	 YYxh1D7XXTfi2E/VLZpS7IbF5qwQScC7Rw6R8L0WpOMRsoi6IeM5K6sdz6kDQjyzKU
	 JLEDB7GH0z4cOclKGChIg/Upv+k52OGDeWRGE2fhw0eqjbspTqKHwn35gKPRcXPV64
	 AN197vh5ncUhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C25C76196
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 18:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168114972579.21336.15583266394708864970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e03fde0c771731acc2d585fd425d8f9d8ba74e72742be5b0869e2888860a5d
Date: Mon, 10 Apr 2023 18:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681149725
