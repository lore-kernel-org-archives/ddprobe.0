Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FB3EA1
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 01:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A0FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 01:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679276705;
	bh=3hPxiVX2HRQEr+YYM+9E+CcXJjRPNQPDXYtODzhZcLE=;
	h=To:Subject:From:Date:From;
	b=UpipgZNnnM/ECWzyqMHrc1FBMULWfLUHs0HdSUSwf8VGcnLCA9a+XxyZotPo67X9Y
	 xubeqt1PG17WtA8LBX4ZHBdx9jjjKzOv213mlsDVAP9FqCjOT1rfHoYZQWRj0ObeEX
	 BsLFJSvjznS/7vrbPSLB6+ItE4PZZmvKGSayKk6IOAro5oO9MFM0M/q8PqZnTKSw0C
	 /JJqidrmEF5FeVPy+or9kVvfylCy4/2Nl9XROFsF7kpmla2q3A/JeN9dGnJ/EvaG2d
	 9bXndJ8mRzotfnYPy4x1rOUQvICBeB/rQg37Fx5gu3AuKGzBpUlt+8I7h7+WQU4zIJ
	 0jBJ0CMIqB44Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A30C6FD1F
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 01:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167927670572.21825.14634871406117785223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c2e0b9bdc1cd6b8e599cd33dfc1c077cc5fb74f628bc3337b3ef964c85948b
Date: Mon, 20 Mar 2023 01:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679276705
