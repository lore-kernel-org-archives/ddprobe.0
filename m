Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57AF633DC
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 05:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD169C433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 05:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694843108;
	bh=h6bBrBrv7VlB1KD+iJuFENFn/qoicj5P9CGgphJZ45M=;
	h=To:Subject:From:Date:From;
	b=X6Xiz0XxsVOdaaXkyEeLmcKFFPSmM465M21fNJHGhdwqe77zPT/amqtpKDPs0Krx1
	 33dUUSFVN/j2uPawLJ/DGy8n6UjLYOceU0oSU0TYmiW2vwSavyLEtCr/eSXUMMgd8r
	 jZ67E39pH9aKR6dR19ESKq6DQdCK0YtgIT6YdW7XhijMXvKTBVdfCp9ZdaAQavpa71
	 1MG5cHpTQWhQgrXJS6hSvo15QB/XyG/qHHCUZJE9pA9KNjXJ6Tpak3knVALiU18AgI
	 M47oHnZhPtC6cE18TXfP6+QEhfY+nDcOAAQMVenmgTJT+70kamPK6XbqabSdx0zBTg
	 RShhR1mIIgG7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBD9CD37B2
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 05:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169484310868.29730.2389414905250839947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67d4090908a6aadb7d84cf6a387a80b42d4452b4819c908e14005ddbc83aae4
Date: Sat, 16 Sep 2023 05:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694843108
