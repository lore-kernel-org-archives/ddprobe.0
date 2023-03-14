Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCAD3C30
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 16:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E34A0C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 16:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678813085;
	bh=tGEKeeAcXsrqLXOOwo7WjnI9cVDcC2zVJFMlDbpuv4Y=;
	h=To:Subject:From:Date:From;
	b=NEdWM9c6RoLISW8tK3lil24FXwQmYZuj9jU3lP+sUVuCn+BF2E7kgQfkrcP43rzgE
	 9qYMRkvmPs4Gw9kbHsWwzQyjKgX8jhWYrFPbeGiDQj/gaiWl+yhNTdkWM/9xXvfIJM
	 Gil9cZjsYyfqShmFWsSrpQbDCRgaXNI01zVaa+t0LlvWP2ZjXCZTdHHFeWqmez/gp8
	 H9ST0+y0+G3TZeTpKcFlxPurL0guvoINaI0c8NCiJDwlVpLWwgHB/ToWBJG7CX700O
	 txf/thWjssIVPnp8boRVhYg0MD4lh+9Ih1GuODj3DNVZ5VosvHTNp6oMjD3nOg0t6n
	 2C2RQjXIw3hOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A37C6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 16:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167881308580.28625.3958819757779174512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bad56dfe168fd0c08b1385984c920e3d6ca9531345b3daa8cab491afc5046de9
Date: Tue, 14 Mar 2023 16:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678813085
