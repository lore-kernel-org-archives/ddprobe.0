Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 651D579DF
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 08:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A2EC433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 08:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687248128;
	bh=JFgOslyEKRAkX4VxDvPgGoEK5YH+nmK65kyiNZgITjw=;
	h=To:Subject:From:Date:From;
	b=cVJTz5r+FQ4jkFxZbXK0zxIXNNF5M1tOB7LWQtOejV9aVW65ew/chx+oiBxZNyZQH
	 OmaSQKHuwhFB/yjtAx9uU1nIXqiuiTeAZxtliLPwV1+W1O36DBydCYKFpsyFQbsSR5
	 XSb6XNNbBhxpRDFYjK4IK6cZGSjf3oHvJODgWb1T6S4BbnYhYFNIIAmzANUd2vxfPt
	 g0LRXVFnJF8BLWE2cenzuyUhrTw7FBwP5IcKsPj7yxDSQiCOoShARIR199qQ+xb3Mm
	 lwXua/wi41t8hw9RTByw9idFq2MzPddu51Jv09yEXMQkDz6UpkshFS0T6wcgYmEdP2
	 tf3Bm3IiGEt+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35EBEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 08:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168724812872.20556.14237313369516584570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69a8ef46ebeb3d91ea747ff98bbdb8ace6c90fdf078935a0021f24b97b21e57f
Date: Tue, 20 Jun 2023 08:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687248128
