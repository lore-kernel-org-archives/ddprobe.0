Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D005361
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 02:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0786C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 02:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678156145;
	bh=vwvl/HvV7WGu1HvvI921gjWUbrSr1nX+ZPVDqv5qOhI=;
	h=To:Subject:From:Date:From;
	b=B5wLC7O8kwgxSNGs+S70a/Y2EZhLUDASWk1z6pQCpvs1+plokTiobRReGb2eFKNVd
	 7XzkHFVr1UmJYZAzQWyxbtnb3NbFcV2A0nvaxyrhMvz58b7/K4T2NDiEwORJxBcKwr
	 OK+ozSj39IWlzX8WLfae0zKZ8qr9g4mmfXNlShXo5ym2k1G41/DNtOjKiKK1LlV/OT
	 yQm2IS0a343oNCFVTFMMuH/sekF9tI3DS/lvUUJbGpnFggzlL/CYrQAz7TPdt7B+h2
	 tTHPIITvnpO9CQ6ZnQqRtPHZ9rPs7XU7exJXjsrLaMQ1uWB3arU7jLvuyQFnthhxla
	 565olEOxUhupA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DC5C61DA4
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 02:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167815614573.16871.2410035447343370363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f898b276cf6c30f09176adbd67f2b4ddba1628213835a0c4439e2a0651ef8ac0
Date: Tue, 07 Mar 2023 02:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678156145
