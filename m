Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC7C624
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 01:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E69B0C433EF
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 01:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684544885;
	bh=3bE7FkJzMtHEBMEqDXF8sRgKf2cfFK94RGJqbcFaPJI=;
	h=To:Subject:From:Date:From;
	b=ST7XfU0fc1RFRPOs9whCrg7j5FyDgLf7pX8Gi9cT4fbZpN9wkJI6T+ooFewn/OK+A
	 ws03eQlFKibmUF6bA1fFiKObN36gE4O0CZID56roBH5I0kwbKEZK/DFFlE6OGIF0Qy
	 7t03Qm39HkrRhWynFuXcZ9M0MCZwzG6H6XO3gdGZndRd1aS3Dlgugwfyd5XJi8HlhI
	 XHbgRZlpdNkjA78SM19UQ6LzYsMKURgvKzLEULGa3z+3N5X8S6DJZDzyGLpmukPk3T
	 LqHu0s23tbywf2wmdGbs7NETGpjE8EX/Pte0aawfo0KW9yVSdth3IZ8kiP2VVh/hoK
	 gorNpZZCcRneQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91BDC77B75
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 01:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168454488581.26467.8346576048462997893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f70c40cd7ca82af31f93c9053b87ec6357f4694cd9e453daaa455e695ee2da0
Date: Sat, 20 May 2023 01:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684544885
