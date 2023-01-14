Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E713E7C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89F36C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673655687;
	bh=6knXTRCTp11zuzs446k7eLCcxMhODNV3qhAjFYI3HRE=;
	h=To:Subject:From:Date:From;
	b=B8Md0A2+UjZvNZ64QxJP/ZvVuxBUzPXE9hbsT4ofoPWVCsqPQNqzylgL05z9Kfv6I
	 WJS6mQfJbzQZPZtJtGBPsC/OlAQiHIsU1rRFnJ88mkWdEYtwcs3/3E1ml9I68xn0hU
	 arIk48h5G6x4fIl/1gOIOmrnUp8bX/fumMGmt42SYt2W+hnuKFBR9kXMOLlmIW4exw
	 vK7acI/ZsK798OtJsfjcKSGDhE0rCQNu2IQT92m3BTf4Ar8Hwenl466lVaOkaz1/o+
	 Yd0YUe7W/K0VTEY7XpVhAmBwQ0HCT1/+iUHdufFFAYknwAEseIz9PORwnMEW4IrITc
	 zQ3/tiI8HxH3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DF87C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167365568744.15691.6985697871593115340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 430a8388f1da833f316c45f5795d97facfa9cc4103705fba27256fb13a7241ea
Date: Sat, 14 Jan 2023 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673655687
