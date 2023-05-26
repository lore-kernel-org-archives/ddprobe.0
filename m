Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CB22911B
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 22:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFC55C433EF
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 22:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685139966;
	bh=SGTIsZW1gkuT1ckCNS5UsuTuRd+kq1rq7SHB8SHdSME=;
	h=To:Subject:From:Date:From;
	b=NaL1QtVy+9POrZ2is/rZMH04Hzkd84daNb7wXgl9sIjeezmGpCzu8uOG7z7XMnjxP
	 847x9lMLXt6U6Oj/HCAr3TApH+oxE9ziD/ElNl0WmZ23dxK3SrBn4V9+5uWMZkoFZJ
	 q5rnpPFWh8/Jds4o+Zk+S/2QCbSaMk4/Fs26/weOTb0FU5V0TOo+YYJjKuiw685Nse
	 7LFouhLxlhIs2CXL+W068lDfMKKQS3zmMUPYFfI/8/B5/B1o0Lwln8syRoUZNY+JHg
	 Y7n+uluJbeAlEH+/sSSdyduaZ/5wfdMxfCnyNEIR81nap0CH/GkBrJvgBeog6RvG/U
	 Z/7Fz8X52JQYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEE82C77B7A
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 22:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168513996582.23929.6986169565870885982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab841cdc5e86f01c3faefcac033cfcc3c31c0b18276b70df0af6dff848e90479
Date: Fri, 26 May 2023 22:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685139965
