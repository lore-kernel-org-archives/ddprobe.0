Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FCAD1FB6
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 05:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF3CC433AB
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 05:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688189048;
	bh=o2beIQAC/ZG0tTrjkkb8r9q9mtmeGuYqsctE0Y0Wm7A=;
	h=To:Subject:From:Date:From;
	b=FWhgZr9QLJ7LbF8ewWPyEmgHmOyiL6WVAYJtsPxgo1UNcBF7xRw4oLUcYrbseNUeF
	 +8TSFkC6RrtnChNEpzgD0qJWnA1tsbNxwGSB7qqXM6Z4MXl4l2K3Cyu7B9/9WNG4bp
	 odTkWTEuWv39BHMPk2OwOwZPc043kN/469Y+UVqA0Fbg6ONroispkbBU9SrMrkd4ua
	 WeR4TsvBqofYrvYAuf6IQQe0JyJ6NXOXOA6wdyKUGvloixXf28HOLMZ+ywBZs1zfJU
	 YW2TkMw+De7Tu5jpOoA/UICmWdD1BjkTX3IjLWhBkP6e88MZTP5tX0f9/w9eSqdSdm
	 Np+/7Q2Ek/wRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEC6C001B0
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 05:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168818904869.12614.11858144145523855286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ba007b1d051dc17ced25f8852898e68dc328101421b56cb3840ed0d47f74e0
Date: Sat, 01 Jul 2023 05:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688189048
