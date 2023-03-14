Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E6CC8F63
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 14:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 29BCBC433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 14:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678804086;
	bh=CzNB9MVUYPtU/DzwYUeyZml6gdzk4XRe/AE2c+J9zZw=;
	h=To:Subject:From:Date:From;
	b=PUIFgq3cj7wWMINP6oakoSuucbKduiKgdh6/uMOCZqyr73iZ587+8tIuF/LVo98v6
	 jUAh1+kpd7CwL86W/vWaQ8wQwVvvSSwMeny8idCyh4qumPLqgrXcScX/oG4hWfS+th
	 JQ8jVjFTnMPeBe6FxnITiJ9yi6m6CfSfs/MviYx614i2eEfQ81y+kdlwutev145Gv+
	 2QsyweGLbEG6/BitcvabwCAMhAfz24zoZ2oe2DSoKyML+3Fny6rvDl5TFOHrmmsbUR
	 xPpjWKdgbHgU/DrQBWt7O/0hqJPZUc8MCGAkGJkUWnEcJa9HxWe496O1GmPqjJa2yB
	 p0Leo3zaeFVzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB45BC6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 14:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167880408589.8163.6697785250574694788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 859b3def6bb289a81a1f6c80f04143a6938e1e595f6e8fb34f6e7af3602ce01f
Date: Tue, 14 Mar 2023 14:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678804085
