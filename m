Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76AA8A2A
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 01:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98F5C433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 01:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687050608;
	bh=b1zeRgSXb8Any9ZzgSpObPoL5Mpl0iPvLjGE4taFW4A=;
	h=To:Subject:From:Date:From;
	b=dSZ6BBEmd0KywsMelnzbynyD2NrKsiRY6zJxl+d/wwoJCr6AOaDRuo88dnrFIAMxt
	 y/37Mj74RTa3ZzZqbvHqXUH12tgIwlivVMmtUIuJaWmHYyBjhCqJx0L+MIJTG7e71R
	 SJh93J7KSl4qgNqL8w0K20jcrV94gU/aIr6G11Oi5XNd1ggGUtiAyobvsSh7Yg5aS+
	 rAfvkmLptYQrOOmTIBAkQI6ZkiI59Wz5fZEu3AQwXXe5ZiDgDh3RJwzqzo9QouQROk
	 EzlqAsqbCSSCDGj8b8y6SRS7zWdVrjFHc+PisylDG9ABy2WZUqgF8X9y44htmqOZm6
	 VjyKgtXtvhzrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85CDEB64D9
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 01:10:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168705060866.8786.989760341627254862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbdfd5caf92129ec8019af6fa58cf6b4e390121244d16051c00e5c2f26318941
Date: Sun, 18 Jun 2023 01:10:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687050608
