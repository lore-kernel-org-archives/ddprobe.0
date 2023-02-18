Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1F465A
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 07:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93CEC433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 07:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676706305;
	bh=Oi4qd9NAf5kmzXGQGb5fgti7FomLnEj61KBirRmnutk=;
	h=To:Subject:From:Date:From;
	b=vJkc29inK7akKLzsQOkrFt1ri2HlKWbRUYAhvRilCoFjYgB2PZMSKt/NfVpCjMTic
	 yzQv1pWlM0CTMGrcoJb6hYl0iluZ/99LlhoIEn5oYHb8mxhhLwGLXveLO5hb2+X8fA
	 t8yDNwyDZEsy+hVAth2gBrA7RW4C4oFdZIYX1jWbWG67/W85nSx91PDg2cQkJ2ket8
	 sefsLoXoAvncNaGOJTrQ8NzCBgt2SkPm6sAVj1GPHP+LQxqhV7Bz0Skae3CRxajvYg
	 1GzVTh3vdNtJSJ3TX6zNjUtq5CxYGDo6vjFsXzU0DT/Rz4LHKAx0mS7SNYcuXFMhFH
	 DfGliDJVRc1LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA75BC636D7
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 07:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167670630575.3922.8499315213623892834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 126fb7f7c0791c5cf53ea92b2c916fe5d09cb3eb371338fd001b71374fd2535e
Date: Sat, 18 Feb 2023 07:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676706305
