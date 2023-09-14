Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5012137E
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 20:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8F9C433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 20:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694721908;
	bh=FigIDcMURlsNNcvlEn2SYbU8ceX2tod7CDNgcuiNiqg=;
	h=To:Subject:From:Date:From;
	b=U03U7lQZn+p0VyMt7MLFrljk8dBVXM5Gv6hlJl8hi7vIV4Z13X404TdMmnVwRJXOj
	 aGlNS3JjJitUjWGVTcLARuwR8jOdLvqKgdv5eZ60XbNUk4vWMimBFAerA5CjTWHAKj
	 JpVTvWHrc2J+7HAMqAVlAEnYJ+WHvT8gikXA4Xun4Xx4O8F69XyVses0Gxb5GQZWFO
	 BFMO9poESzA2WYmt5rGv13lDqonwFUdTT44ephzwliwf+8dihzXz6/WalqFK1pQf8a
	 84csLJnST4r/jIiIYoX4UmPM/yNgP6kyDsalXI1vLjq0UCMSMq/0kFJxR54QZEcK6R
	 +u+W60ilafLqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA5AEEAA6E
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 20:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169472190869.21477.13448403121875224780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b025bacbdcf9532bec716567397d6e17ffab4cce9ba53afa414e5b77a4645517
Date: Thu, 14 Sep 2023 20:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694721908
