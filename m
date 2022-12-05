Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E767115CAE
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8759EC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670282454;
	bh=/GChpJ8zwSPFVcPUzQYIJS47uNDIJwn6EDZFIWxLxdQ=;
	h=To:Subject:From:Date:From;
	b=QfyVz+lacr9w8WVBGd71YiyPoa/VJgpVljx+Nuv/PvvJioUUVgaAFKzHSZNIz2xZI
	 0TUexcqUuQ4DY7xTV7W3fS60BBfM0y5goF+3NJcttkp8m3KU/AFvSu0SqTKCFSCS7h
	 5GECq2VNIjQ+2uQ+qFrqA5MCK3a5cLHXk2fodU28izzuba/t11Pi8CjtKqCsS7ULZJ
	 Ziq1yvuFKt+LN+/mpLqxPqCqm0Qy4+ttk5vVzR5LKECXtJdKidfyAk5NvP4j7pRNjz
	 ehgL8jUsxIvtk8spJcS5nqFk2RFUIj6uMOCZxeSnVnILwIynBcwjOhTb3aozt7HRqQ
	 4sefdbtZochCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FFAFC4708C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167028245444.5671.6513982276460707747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2de7a7c9fd29d46a5c6252d1a8b46a8939f07170bff5544e7092c777bb5468bd
Date: Mon, 05 Dec 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670282454
