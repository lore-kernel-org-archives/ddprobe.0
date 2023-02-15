Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6F07B
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 07:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4478C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 07:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676447825;
	bh=4S6+lSvLgnZ0M7AM22Nu2Zza/pINmU/CZGuempKIup0=;
	h=To:Subject:From:Date:From;
	b=spIqmfIhPGAXaucGuauJ+uPuxERhyZdVgI+zpkQ6P0xSiitHC/tOnhcxGKBW+ARTl
	 BOWgd32mv/bqxcSW2LMQVEXu0VXCtaHnWe5T714M9L6SLN6J+YxUwutzFp7TYaEeMX
	 mMt1vDT8bHNK6aSsubJo1lC5T2Ro9XWCrlZb5b0/s1Vc+qgBkCJjhfrzeAyK3Nddpy
	 IaU4Y7z/TYmMf+ZkFqXLoQSsAUi2PYz4ZgZUVKFi/j5/YitGPrpSf4Is7SD66h8QlV
	 c3Mdmys8VZRMVEvXrvQbBRvud7XYEBVrBNApTH33tw1wbn+G6PpZo7oCIye0l+e/QT
	 VbKInBrZuYZqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83ACC636D4
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 07:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167644782574.30726.15788003748874522290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28e3f48c04886133a20671c608eec97a5219e97fc1096e4b32b19535f060fce
Date: Wed, 15 Feb 2023 07:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676447825
