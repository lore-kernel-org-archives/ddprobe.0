Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D314E1C08
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 816B9C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673010687;
	bh=9F+UuAEi+sK9WLhhvjFEbOuZw3vdBSV/kL/DTRcQX8Q=;
	h=To:Subject:From:Date:From;
	b=ni4BwjDcnHeJZlsDNg0jB0WJkrg25taBqvM75Ahe26Wu6kkAOYUzaJUFwjJyRVx75
	 qRPxmHx+ARZeZ0zyPTeQo3Dh5s85YPdqC68+2sYXcApafRSZYvu6NC3Eyf9N5ANA3a
	 qEvnDrEamRGfgeZyJeoRVggm8M0c67BeY8BZyipzTEqQBJS+1/KyhN4Rtewj4uLL0+
	 cf0Dml+RoJMcW5Gcspqhy7siS2tEsUXEJN8Mc33SNBhBwK3EfxS9yFOXNQQsMKtl11
	 Gk6RP/cBY76fvHP+hSOaTPz/YdtXBjT7XdeJOK/vlRiFD0bgb7WJfoTeAMm6CZGXlC
	 8ZvKRtpz5ATqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6496BC4708D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167301068740.18776.17234604207389083519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923f84e1c0947e4760fdf6c5ac980b5d42847c7490280a4294080cf89db87701
Date: Fri, 06 Jan 2023 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673010687
