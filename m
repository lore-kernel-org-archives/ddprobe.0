Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C602C2F3D
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BAC6C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662363053;
	bh=68QoRAiUcszfzLZbhoBgXh5mRU80LjvCE83PS5cLDOc=;
	h=To:Subject:From:Date:From;
	b=pePozmuhrxOPrGV+wnWv2ZOrf6kYKstCZ9z/mYIY8Xfg9lJ7VW03WxR4GQ1NQrw+/
	 ADlmR1FcnNwWYQtWgqAqVqZq4nOunnPJjjY9zpKmSsojkAe8PtTP40TdoTWcH1e8Dw
	 a7a/LkhjCeDuP8gM8stsyW1kk1ffKblWBuuZvr40VYswwObyroUMDy1FO8BhenubBN
	 bquteU7BITKgwHNjbfOV0IjJEeuOsHLtO04CmBP0T08YPDebb1e+vk6PT+BbVa4oBz
	 SkpP8B2EbFHf/VwyFHxicFZclwJ/POqJnxPS1uTq4H/21vLqR+e1Fgcfh4N6c1+NHr
	 ZHykHNDttajcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5528DECAAA1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166236305334.24029.12069133011128353113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8baef0fd9a5cfb26db0fd328c8246a834727ac9d711bf7d824586b686cfffcdf
Date: Mon, 05 Sep 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662363053
