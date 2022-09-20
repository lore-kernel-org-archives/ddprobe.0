Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4B91ED3
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70AEAC433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663641653;
	bh=Ln8kZglaUfIvCp6vss61gHXZL1qKDVe1HHqPDgsNYR0=;
	h=To:Subject:From:Date:From;
	b=pxIxO8mjNgiLv+EwtASH+n2W+O182s/oL89ibTq0C6OfNT17piRlhCc1mL+j8Iq1n
	 O7ooaEliCtoduwzlskhOmh64+jZJCEQr2e0t4+XGLXDKtUPXgpZEfqyBU6SSUXiw+f
	 S3i6f8LlLabcy+LbKY8KSYETg+ZErih/FbYQ3iKBxX3Idjv49teWfUuJON4KoDiTd0
	 A0eOIV6UAhLwSMwNgJguJ6q+QNaMSuX/vLKHxypjCFHP+OHPSynLV3Xot6pFqW7pzh
	 FAYmcv2NKNqsa1+KKYyxojZEJX5d/C0wU2ORPKgImT0a50Po7uygpTpPzjc2oj2tH8
	 uWbFuivQvOxFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54378C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166364165333.30485.7270697410484948947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc35084381bc3c89ef567997f1a3dee64281a74866fb41b6a18b09de45e5f71
Date: Tue, 20 Sep 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663641653
