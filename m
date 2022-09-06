Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC07286F7
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68954C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662502853;
	bh=6AL2QCRgdFtFmM86fpID/XxpMFbwDDM/LBlV5YAiWno=;
	h=To:Subject:From:Date:From;
	b=WL5qxlZwCU/XcCz7PNsMLrzjxq8l5UJBWCobhxXNjdPeUkStNLifvgMYr45ypSJB6
	 oJM05a4Si1Mjm4c6hfNGstvzIXnDTEQKawqgaoqIAnWhLFTS5YOxA21z1boDYa86eP
	 uZv2/z5actK6GZR0uzwlhyGmO1NBmmylA/CA3S927gbkzU4eS21yUWs2Iygq7L2048
	 6tV2fNTkt9TB0YYg0FU4sZjtTMKJzw4MU5eSlg9hsxlsMuR9kMtBfXx5euUPafRYjN
	 yP3k0A0TMUYvMIjoGR4MNFeqOUBqHQM4SrNazfkkEIUwx0Y58NUmIw01pfKCQixNSj
	 3RegxMSxRmKNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E73AC38145
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166250285331.30272.12699380606260799358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed9067f9148675e76b213da1a0e81cd74cafcb6dc4ab6b47dc99fa7b6a2c74a
Date: Tue, 06 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662502853
