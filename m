Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C03117C6
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 03:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFC3C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 03:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678763225;
	bh=+gj5/aXoVCHvp1zHxEzuuok0biWZQevBZTUX72YNuiA=;
	h=To:Subject:From:Date:From;
	b=rxoyryc8J8YenIDNKWxE5dQoVzeCuPooMVAXzjSu/bDNEn+9Mbkm4gfI9mzVUqIy+
	 3EmbaswMUxd4MtfyGZSGf90GiU4wDoq83e8bRM5tgcOwUEIP09ae4aN+gaJR+5uM5p
	 mw146QoaFD/NzXSlzD8dLMs7JQaPw02WYs77Sz5sSk/7cPGjMq4XoDuJv+tE7g7rAZ
	 DgwcenqYq2YydIJC16l71GRE1ykONJuL/9kkuT2l8qLN6xcTta3cru9ElAzHPeXNVL
	 WJr5jnu17gXmOYxyu4EOjl0rH+/FC4aVQlcLlVDI0++BPwhMWJdqwXfj+neSdNR/k/
	 xaPbbffd0bFBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09F6C74A44
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 03:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167876322577.22012.7087827778087303697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f1505cf18be0f8a09a6dbab010b00ed03096eb7e48734d0f240ece793bb7e8c
Date: Tue, 14 Mar 2023 03:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678763225
