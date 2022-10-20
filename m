Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFE1A7B
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69DB7C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666261853;
	bh=fYxwvBIioQsIA86CnR46cB0RtWEYL/oaxDrw0m1LSww=;
	h=To:Subject:From:Date:From;
	b=MxTQd9hBGE8308HrEwfeulAECf+ueIew+8Sawl+3dGstjUGqs7q8jiBM7VxRAzPG8
	 Yb5EPvgKV90mzSc66RVBWaTzMljxpaglW6Y6cixN6bFAayBjsrSv38ZLMKUHLbFdRu
	 mj2aLpQb76pStArBQ/DusGj85FTf22e5EZFQ5fBpUzeugIOgUWrtVnMNStkl5DyxK1
	 YY0vwXGh9JI2GYamrQi4yoBfKgYngH80I/9NYT8GtlPZ8ftEUY2yb9BTq8h/BFPjd7
	 ATrnznMLINbzDZddM8okIRFI23HuAqX+VjmghEgY0WvU1KWXtVgvpDvnphN+XfPoQ0
	 hmypUKXXS79FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EE6BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166626185331.30019.14595884132208553583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cf2f3b30d11b1f6775895b59fd2f5c5d86e74681aaf9f92aa2e497fe57494b9
Date: Thu, 20 Oct 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666261853
