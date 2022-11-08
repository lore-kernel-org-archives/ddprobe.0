Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E9B8BFA
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB655C433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667934054;
	bh=og7HNBKm6M2BlTP6Et4B57y74DErDhnyd/gGuhSUQU4=;
	h=To:Subject:From:Date:From;
	b=B8A/Y5zgjPWPSp+yskkzlE64/pe+g9lj6BcTn6yLYKB0pQf/l5dKlKxpNRFIGYfbS
	 lR5cgk+1/U70xh+BfdWzsY/Cu5Vxsdb67T/GbgsQG8wU7EajEZfBarV1cK9UjFdb9r
	 9A6pi4DagT+AqCxyRtbpN24Hq7Nxmvruc+FNyz1O7sjbpHo7Wy05IPDSm2wY94D2zk
	 ltvqJg8Pcw7rWvZgjcO8oM+DMHcHoPOrfMnuzBXgJAkWsCa+uzc1uCcVOcb7ByNj+b
	 LBlfueCd2xD+ycznMiBrGxo92sPsj21TRYFZL6X7Z+ucmR4yIbCyi6qDQ+Kl4XaWXc
	 M73KH+BuXnpWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CA0C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166793405457.8594.6608621416297945893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec96325d92c2b1d67110b02ef1d6b6d438e8704939cc645cdb487059f6f7e87
Date: Tue, 08 Nov 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667934054
