Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367D417D0
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 15:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D700CC433D2
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 15:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683560345;
	bh=d3T5Xc3iofx+v7AOrFfcsAmOrJjKRgRHsKp9SVjbnrg=;
	h=To:Subject:From:Date:From;
	b=jXvUhXcLZgKm5mKRiCAwtA2pQ8XzaYS/0ktctG8Pcnu0oN/lnbXTm4KZmwE0asyEq
	 6+o/30aqDAYAhUIuf34T2Arn5SX/kAmQX7wG5jDtF5iqdx8cXpsezxp32thGM8tEFx
	 pe5akw1Fy44PzW0zFeWNCYyfFyeWcLwz7goRXY/HhjFdbTpXQXgSiw2/AcdkeZcjZz
	 +e2w8Ddl//8lBMY76wzMgUZGmdps2ipnc3SHc6VlhkPCV3Xh6xVdnoZ3XfqnKTUS8n
	 8OMk6XampyoWSRb0T0ghTO60+0ar+WLoUTQ9k3xB3mIthTWAiGWaQG5qsvIm/KFx1U
	 JSk7eZmXKsq9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA53C77B7F
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 15:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168356034575.3644.17240735336463555095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71bc79769e465877ea3a3cd1f2b6192e7ca9a5bee71abc828ea750340db1ca21
Date: Mon, 08 May 2023 15:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683560345
