Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2DD417C2
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A45C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664846453;
	bh=F+m9ZRf/yEOovdUu7xGPQy+BXOZ8BnjQHeS5iiugUiY=;
	h=To:Subject:From:Date:From;
	b=KRwp1tmhdi3mIXprhqAWqX+Pye1jtJSAqDYqyV79Tzujz9vTaOo8x8oRtFkNPlh3l
	 g53ykCoffXvhcknICZ3XbrBa+Y70G7qN+2R6RGGKmlH5PbsH+cFxCGJ9Rn0MyVP2oN
	 fFbKIuMYtRtNApgoq3DHcWHtqGV6kliLZtEpQubjxFwfz59vHILknYudFGkRohEODH
	 YOh7tYJXI0A6NYzXNZgzxV06Ln54jz0W2uvqYgfIjGI7qdKDXG51MfdyxISff8mD5f
	 q74M0owRM2D+oK9wrXUu2sROaQ24iDbCz0figJevGBZp+CAWMnxtieqWWbfcuxdNmN
	 mWmnu+I0ZH51w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B60C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166484645338.3379.15122272193343970671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adae8dab555d0c8548d0b2c6d411dbbf3057c254c73618fe8bd369e1e548b0e7
Date: Tue, 04 Oct 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664846453
