Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC9F64B
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 01:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27F6C433C7
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 01:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691802188;
	bh=ieJZgIdWcOlgVdAqfDpJ6Q740pZaoPARO96X59FqPmY=;
	h=To:Subject:From:Date:From;
	b=czeSv4Hm5WO3sutb0pPTZBeA6DU8Fc4Kd4bpH4S2flyn4dLznlq6qMh1hqjM+92AK
	 DUgV5mEiHxCDyuZkuPOe+ORejq5HXpQvBp/SxSmlZQRzNLx9Unjidc9RIWJY39xEu5
	 gdqLv9AQEspG/BVLS5Z5kTmsJgC3UyRS34kBfpN6MSOySd9cCsdn8JdGo05/hFiBUE
	 K9Y4ZLNVOx1AMu4yceQBpZS+YFQRl9NVo12dBkBKbIav+gS3yXXS9bw/n/lDbLwxhb
	 MBjOHXEuORZiv2TD89qek2v6J+j7FK3sugFfe+nAm8FvUhKmxidAlxm33LbAc7aS8P
	 cGnodh5I6M+Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7B2EB64DD
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 01:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169180218869.5076.16005530036132937821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec1aa1832c6adc1f2909e33d5eb729985e188f139a92b82a34d84ec2dce67403
Date: Sat, 12 Aug 2023 01:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691802188
