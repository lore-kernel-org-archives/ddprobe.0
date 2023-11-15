Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C20928375
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="No8/y79T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E802C433C8
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700069896;
	bh=QQkXSxXIjVmRo3ab0eFRc49BWkjCBbS/QZA9xyURd9k=;
	h=To:Subject:From:Date:From;
	b=No8/y79T2OB8aHcoV6y73bJ439LbWinI5+T38d1Mcym5jeR6q9UsOTS+4zme/LI/2
	 eap3rm+GmfVfkOHQdYsuFBXY9XPc9w5FSp1lduDoJw9+tzzLMrU+l9M+/XBRe6trB/
	 OL+Id6b5OVF/FRlWqlt6UyBBsO4XnjiF6x7T4YVc1NhWH1mr2OzIl6lxpmYo7NCcg7
	 sfuz1Gd11dy9VLKhW1F6p61we5AVB2oSXdG6/hgiM/LbPnB20gJNy5Zp/h88COQToG
	 HGYSF7LxKNSee8SlADVoNkxlKvl4YaZ3xZ2QTTHFRCPUxGDHkMRgTdUVsWi32fY3+/
	 CH1j0RReL33Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66317C072A2
	for <ddprobe@lists.linux.dev>; Wed, 15 Nov 2023 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170006989641.826.11242774892200826254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1776f6076c37b5c248bc38d1f8c4d5fe9e3d62684bdbc0b28d3b9fac57e30a7
Date: Wed, 15 Nov 2023 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700069896
