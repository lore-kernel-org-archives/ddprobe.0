Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E7B622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69659C433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662697253;
	bh=Nt4k3gm+8VgfQ3HaJgIj4Z5ktcH9ngzFSQrffUGAcJY=;
	h=To:Subject:From:Date:From;
	b=bRqqOmt3hjoN4DrpIZRFQzaiPcI+pkijd9VqHphwG6h+JNmo64zHPIpG4vypkVUjx
	 vOS+yvulfbfFEsMjz3VyIeD91rQ3GFDfzeYk0Su13jlgUhcrxKzW86+7BNXjS8gNNZ
	 E451nlYt2szRJrntMGUjNsu2Y97ZEbBwIdIQgXSNS4GTrdQkagkAJ4AWwwP2fx/3h1
	 9rMofo32CAzF/AjI9vgV3XlXwXUfzB31Wn8GMEJcclYXlN71s0wo8jScxC76QLXSUo
	 QQi8VUjCgit6qIhFv1RdjPcUYX9f/dnUwJtZzSt3jHJ/Z29Rhrm1XaeNVJTuaZb3YO
	 M+u1vdpoNjlhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC3BECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166269725331.18714.16289018587886797967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbb5c92bc9db0973258f086f5cee1e356f78111341009b24970107c743020b49
Date: Fri, 09 Sep 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662697253
