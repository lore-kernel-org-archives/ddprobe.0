Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63172108
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82628C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672149687;
	bh=BNTGgzS3BTnwkDhNjrY6nYeXYS8FgFiAoTFmdyF41so=;
	h=To:Subject:From:Date:From;
	b=CcaDF4eUV97bCOH8nMlBz6AvSGM0lmXvLRoM1dsRsqQ9BqX9do3Jrga4M2MMaVDho
	 oLBQfasvWruzHCqbHNfQXuGTRWl1P+edaQc7OOtPO/bAwTu5USZHtBkkwuXbE1776J
	 trONXl+RrtYGAbXY+UOhdc6+fjl/Oiw2SjCu3zljSy7P8I3kBaSXsnE/+TAmiFEcoC
	 /vhg4gN5lfAN3hwAyz0fA66IrYUbc6+VnS+fcRm33RU/5KvWMbEphijk5fgjRAe9TW
	 D4AWMyEYekCYzTI007xizFHVUZDRFCyKLTvoLEP+KAsvKDetiTB7uJdHLbMNZ/xvKD
	 S9PDf8kNALmRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68926C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167214968741.15940.5392283526048144281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c5cbf1c73014bd77ffca458f6daefc8ac77d50be1dcd45536a6c5ac78e458d
Date: Tue, 27 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672149687
