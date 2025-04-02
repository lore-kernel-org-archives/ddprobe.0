Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DACDF1A38E1
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743615593; cv=none; b=ZaOa0yJMWw+A5OYJ5Gc4DuPcZXxZYiemyON080Y8RzABYlF6XYRUAN9bbomltx0fhF8cwybrXLgGCPmDL0tQw14mnxUD8xTKS6eyD+jA9RMZ68cAhJy2rZRKfWfkH94jG7UD+vyOurmpFDXr+wLD22VC0bG9flq2wLLMYA1MyTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743615593; c=relaxed/simple;
	bh=8PhwYK4G8mRtX0glOVuNGPRD2y/MoaBeSv+KdaisViY=;
	h=To:Subject:From:Message-Id:Date; b=ar4YNS7Vkl9Csu7ccBeMSoYsrZROx6Cevysrn7+qM6jY7D7Ojnw34bxxrxErPZSaYjgWJJR9Pdl8RkfHck4fduURn2UXXrPSYMB73NUOgZWjQJ5Mk+PMXpWXgmkf2q+GVcup5Sk1tqArVNUx5LCITKx+jQP6e9A8c6QFE6OGIrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2PwtbbQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2PwtbbQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF51C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743615593;
	bh=8PhwYK4G8mRtX0glOVuNGPRD2y/MoaBeSv+KdaisViY=;
	h=To:Subject:From:Date:From;
	b=A2PwtbbQGUv6x12LUjGTJ92k+BXo1dVxUGaHCwu3zJjzYmv47ums48eLq9Q8g4CEB
	 V1jhMWs/LsKGAwcpgQ/u73TFcXD4ciSciiOagMEHsPo7hWSHiUMvon0+WUVPQ92Qka
	 SQx+Whdxx4jIai7hl0NNQhiYWQw4ANV7iqgkE7a5duio7+cKX9lUxq8UXtHTDfQqCH
	 n9KzXQY76tvRqtoLf+hShJnGZ5zKUEQ4dFQdtGozrUxO4czkKB8OvjmTFnMvDodeqT
	 5UBXEEUcT9DpAP5peHGGLXu54J0WeJuKHgUuAhvFnUTt3oouqj71+lt8gBMcG46TRb
	 id0M0vbr0bQwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF4DC28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174361559360.1227.4822287134900668545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc45c521848a83e21bdc5555f925ba3ff930f95a2acac495e42831a0a8a53211
Date: Wed, 02 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743615593
