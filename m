Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBFCA1FB2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 01:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74649C433B5
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 01:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661475652;
	bh=iBQ32IGB7HrSRXKkuuABOSW1YxOHgw+S9hIDfB2Mdu4=;
	h=To:Subject:From:Date:From;
	b=jUj2Rzb6N6YYzN+JqJ6WHVqxrgK6l9xD3ZiB/TIS3diK4v1dliLmhRHteKT/Mgn2j
	 RmX9T2km7m0hrutgJbfSUkicumqUarjobxVy30nN/SNxQ97AwLCk3gcwh0DuDFy9IE
	 xbcImlzsaHnmWLDOlsxRZuEQ3lGqQH2iPTJ7RJz4bs/btwlg8A0KhUlj2N2S43MSiw
	 HlrK3TRhCy8G0rl0LyOxhQrsX0bTc4wGTBFiuymvEll9Jd4wSMnyscuapOUXfu9zNe
	 pxBXemZdoxoe8toF23jM7fiDFHeI6OlIZDyTjVx74xUZK4Dsb6gfjT+uSFFEnBLNS3
	 FIra0K2NCewEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D96ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 01:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166147565234.7304.16063801308140209276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860bc754e5f8a16f795bcc47c6d48aea626b3a5df1325daa202b27ebcedd7889
Date: Fri, 26 Aug 2022 01:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661475652
