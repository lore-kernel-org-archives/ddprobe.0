Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360733207
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 20:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31A1C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 20:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674331325;
	bh=Zw3OttZydD0+T07xoqLyZIKdTYsTvN1+FkouQhkV/jQ=;
	h=To:Subject:From:Date:From;
	b=mfstLx62/rdZwh8sIEDlTTpgcFdKiGEFNgUIFpGzmP7s2tdugyMByZ6V7kp+Mhn9Z
	 d4TVpmS8q0YrPdftG4HqKetQJ1YjOi0+A45rJLfV6IJuWxU7+iZVdJH6guyFa0egVz
	 PUbmWRf1jk/KzEjSGpw96mEGe8vArS/1+RM3niIVsRc4/GvrztqAiNxyJTgEstK4CD
	 7+lW3rlz3iySVxiwqStNyWIERxdG0u7OTwC3zhrtUY/GhfnLkZ+rMWVqWPTD5tUm6h
	 IPuLlFPIuv4IOA8bC4oqN+eassWn4IKBh6lSjWZb0CL7UO9rWd1M18ZD0IBZNLsvLj
	 xDqUxZxjHa9kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A35C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 20:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167433132574.26159.4157763177889579141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6c0e0247a60a193c6ff6c7c409fab1f40325e110742b3d51036e6ea4625c7b0
Date: Sat, 21 Jan 2023 20:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674331325
