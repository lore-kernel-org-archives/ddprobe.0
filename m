Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66E37474
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AB99C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673386887;
	bh=CneLZVMPk8bViliF+EVqhA0z/2Btu/7LTtQKFLOsyxE=;
	h=To:Subject:From:Date:From;
	b=IXNa8Q05Hn+Ak3NpNlYgKEyvnDNO0FdHRTKT0UDBW7foyUiB/x9WYdgvOx+vvIh7d
	 TvVmWoy0cC9awQEJ3yUWF50Aj6slGy6e6soRO8WHdXNoO1qqSLHoCXvFyZuAwm/sJM
	 PQNjmO2Re+LDpkvaD1u7aoLvvLcXC8sGV73XhkcmTEY2j7xzNl8UcsFoldETTNekp2
	 UYwridYw/d8HAs4tpS7SZHjVe8tjAeKWqXG79CsPpWLgfTbNJrtV+LutDEu2PeDKKF
	 LnXm64VjiM4pLgdfkUvoSr95rNI/2LyqldQKmRsw6YRDIP5OtN0lx0IJIM7fdLgIIf
	 EHZ6W+fD8mB6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E899C46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167338688750.26055.13975639319148536397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d5453cb00a944c80fb44a41542b340e3fb91713f6ce317d7887a6a477183b23
Date: Tue, 10 Jan 2023 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673386887
