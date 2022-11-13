Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC68646B2
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C214C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668359454;
	bh=s6WcU221FN3Zx7RG9ARSYEXTcbSXwGSDU0WweelKa8Q=;
	h=To:Subject:From:Date:From;
	b=A2kEYWQ7wtTPBhf+8NeYvgZWLilWrfPZ5tmJKvhPm2OyomtR1BiJTyQwhKivSaMY6
	 +MJXzJ6nTM9lvWi09qjT5awy53m3AD4b3W8Z98oiyC96EPL9/5XJRPj1v3Kv9cSEyH
	 NYfqd6H7LGAZuAj3MQ9GpAXqE26an6l/ukJdxdI3Q8AiEVCvJSphkxCVBTOTbXahNG
	 oZ7iDeB3LpVCIaELLnENw0Yjg7EYJ6AsDxbWtdVcR9GLH8MH0X8JZzSuRfqfLS3IA8
	 qhZScx7aXRqQpvtShduiMvg/D6b8QFkCA/kJtx5/vITU9FOGBtJd05hcRp6v4o3jUG
	 67IH7O7c4IUyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5125DC4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166835945431.24350.7597204136785477228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c0301029b33dde6aa3e93f4c4231e00817a11af864101d86acd96c531a83022
Date: Sun, 13 Nov 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668359454
