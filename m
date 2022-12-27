Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4164620
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88C28C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672182087;
	bh=lo4X+QsGAby6/apT6wwG/Qncs2MWC1pXXyeHYOPVWz4=;
	h=To:Subject:From:Date:From;
	b=DHf2acCSQ2xnqM5Uz+YbryMwdgIkux6PudVw5gwwDldjQ6gU6cPTNj8GspvSfzrTN
	 M9W9ZHb01YfuNqVG5qxJ20VN88nx+aVPIakMihoYZFyd8/hbWBeGly9hNFCEs4VVsY
	 Ov1BSin4OTsyxvvHoWKc7YzXfXTt2R9H5kSvnt9u/yUwF9HhQD4f+/4y5w5XSqzot7
	 cHTBkOE4kl8I+UgtArAzLE+NQocF20edRH0QjY2yeL8PmkYO28HZFxYi3IFyyq9fjz
	 VpFFb/qvlinbOQ1u6AfqUQ2kWQME6ntwBlv5lvFZZVToEwJtv66VcTo1P6eOZse8iU
	 Y1dHTQEo/Jhlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B0E4C4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167218208743.10121.5508246958024187100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdeffe908f3cc2825d0b893461976fcd823089bdddfb445dbdca2c2ae4ffabaa
Date: Tue, 27 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672182087
