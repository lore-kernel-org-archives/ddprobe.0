Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD37370
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C91CC43470
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665710453;
	bh=+Yf3DZcMUQclwEhvfXyzulYWRYowCPjKb0c7n1RxRj0=;
	h=To:Subject:From:Date:From;
	b=kFPrOE+CR39KRWPk+QKOtakLeZgB6U7SEoAmsFOX2CavuAqr87KkeeS5mVvxK1RnA
	 8CA3YRgMvnf4YXfEAzHR+PQtPkwsQW0lVNhcYFZI8NOjxjgnJAKwFxcdDD0XjVnE5d
	 mkaawXFRdEEZlGR1xOHL1hzvgoppQ8me+YTPwcQgRLZYnzjhnzpZkqX564FVdHHNBM
	 thdH4zCQeWq0Ffy1kBSHZmWgO16fjR3aqomOb391ZIGfIDfcck+iweooSHqDeibY4Z
	 HroakEb/CZ8qA0cT+HgIVFnOxFzfnbaOB8cGLLh5VMca/x53R1X7IJgoUJv60w+bRt
	 aZzfdmqLw2VoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B7AC433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166571045333.12497.17155050235967430822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f501d16a3510ac844d87663ad61ee0fcb253f00eabba5649e1d827824aaf7499
Date: Fri, 14 Oct 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665710453
