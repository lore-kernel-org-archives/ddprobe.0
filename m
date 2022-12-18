Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B60A2D
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8616BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671351087;
	bh=Gs2nnQ3RylBPHwdGrTHwY+xXOhAH6EVfimMCKxII3ho=;
	h=To:Subject:From:Date:From;
	b=QI2TR9XG9mDdpD1UCfEFh45qXezDU6Azr/LfOktT08eohs6PZwN88H7voE4gfkEOv
	 +w183an3/AeZBz+l7vv/93ocHfFcg3nzSgySpYfxyJWGWo2s4M7LpGghNYEbTFfiWq
	 Ns5J7fY9Lpkr59WimIdVQ8C5ZAlHnTZAazFU2EioQvjy4RfqK1pviPWEcKEcP/zhDI
	 msNj5F3H1g0V+iGNNmS62t6OyAYfQrfqCRt54COwOSno1n0KHgdqRcvUxXvVa3Rk60
	 QnfyO9UaIhDMM/S/cWPGFwT90gmc37FbXc5QYHGCG8NmwSR8WaS6FhcvfV0Rrv0Vm4
	 rmdfYSpaLddAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A8FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167135108741.26597.9859742591471471448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b86d430ef6b7cdae9755621e0f0ba6b592180f06ee6293a20e8fd99a3d106fc
Date: Sun, 18 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671351087
