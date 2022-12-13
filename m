Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41958472
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E01C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670975487;
	bh=NMJIz7cq7AiE3i3VODiezfpznBU+uuPNfNHcRqcmHeA=;
	h=To:Subject:From:Date:From;
	b=iCJrW97Qqggmf6koIZiSkqktCAAT6bPN6lQhdg5RftfumFlMrMLWJO2DmwiPEs0TH
	 m9K6A75mVZMq4tQpNQm+uOWe+ZGg3HpbCSOEhsbrEABxNNaOQ4Dq7ryW4pWQ0r9b6Y
	 IEUDLfOdIQbMNTaFgNmqnYOUR7tVSOjRyrfcW64W3d/kg7LPeGivS64AiOsWvBe3kv
	 Nl2XOd74SlIj3rPMCd6PbmCZ1guVP5oP9G2IsZRRlwveYspbuK/e5sqISFoGBhTqWZ
	 GwZTonx3j6nmWePmLPo395IsKS+b3vgqxxXabaZdCpXHmrNog+dZsm0r8XD65Uh2ob
	 kSa4jvwHXeouQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E64FC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167097548738.10194.11889207346243554381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22647316f1d3f09fd25e145160e692e3549e134178341264f43d271757feb14a
Date: Tue, 13 Dec 2022 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670975487
