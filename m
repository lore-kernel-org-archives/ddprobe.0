Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33283BE54
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 11:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA6DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 11:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683891305;
	bh=ZJwsdQUcv1i3ffzNFv+K5ZVD0K2Cs+HEDBHZOkX+v4s=;
	h=To:Subject:From:Date:From;
	b=NC3x0f8bqVdcb/XwjtmTjwgbyThuZXpHvM8AXqhRw0QmG6d9+U0ZU1WKgJ8yul+nl
	 SEaMvcAUmaH6Qv04NToRstrOWsfp1IoFe5PdPX1WOh1w9uq3RXTgNU5FJ4YnBIZsOt
	 tX/zvQDsfwfoSKGK0sWDGl+akvmfV1NqohCPUQk3qKITLGCIAL0idqJ0r9U3TYi0nd
	 ioS67Ddtl/7p5OvRA/ySldtSyD7sRtbLpXwSNrsaBLBv7z77xtQiugybfIARUG7Stl
	 GMdXCHaa/hxn5vEv4OWJnM3DwDagIK2Vmxf8VdL55T0ALx1vYhTygMAr38w0FXx6bO
	 bPRuqPX5BEyUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC40AC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 11:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168389130576.14679.7879281473247805195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a94db24ce8e623e7969b837792d0b30e5fedcfb60a04af07ccc93ed4ad7fa3a
Date: Fri, 12 May 2023 11:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683891305
