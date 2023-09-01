Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4DFAD41
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 12:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6A4C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 12:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693571048;
	bh=TVSk8XjI/06g9/qSUQ1CphJgDiEWPxT5rdDL6G6bV6E=;
	h=To:Subject:From:Date:From;
	b=E0P2D33suqVdLSm8Go2mmOQTzsZvkWI+DRAjYtCtj3AMudA0nD2HamMtc/tPe5AL/
	 NeLjp8lMxe3595GIraK60Qe0FAyzrbzSGsV2EPrO/dWOyLScj9LIZkWyeH7oRlo5Sb
	 qiTi4VqgBnWmV+qfeSkCKQ0ETdL/XR5RC2Uw8Hys/O3b2ln80763rXLmNbodQUqCOZ
	 oXKzlHi1dh/MSobWSfhjX7NGEsCasK7tY8mXvvNuyX70MaJUYq4QJ6dUTHSK6nOBVT
	 TKXaEvT0H0/tFvcdhawyCx8NgUSZB7fPKLjA3GP3pl69FT+W1Pui3HXycgNlAjqGTE
	 XvoAQf8rKZPiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D90CA0FE6
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 12:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169357104868.20295.6371073743568907782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfba8b84bd451d76c94f4506bd43e9c1272607a8a54d8b23e672380d7196b334
Date: Fri, 01 Sep 2023 12:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693571048
