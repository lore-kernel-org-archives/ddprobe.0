Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8CF97B
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71559C433D7
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666059053;
	bh=qf9MHaYkCX0qrJvFRC9wkAC7l7hmaX8unLqnBpSFLgU=;
	h=To:Subject:From:Date:From;
	b=jP8sKaACRhxfRyKOxG73IxLCrFL3vqZGpXiqTLJsGORJYK+cUrWsz9KEs6s8Kz29D
	 Lb1/94Qx+VLBLFjaW4SLVcxFJ6U3eshXFHNxfQuUCIH4xiasA/ne6XjKu7nq1yOzdc
	 pPlLBKS0C8gqCxq4dWvNAAUQt1+MTqxhG1g9TW63gtAuw2XkzoSzPovspLDIpwgMqk
	 QLfaXxeXeGI2deoxa6thzMJOBOGcD04TYNKdgGDwbNhzUP6vub0MZIg+QVew9gZR+Y
	 029Fl/s54DY3Kx3iB0CPxkJc/ImYdGF3RTEhtchxy2qcSekOePqxeSowTPwwsST5m2
	 KqY4HAO2Ssm9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53244C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166605905333.6419.3596756116600608090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4de529a3d02b2683093ddbdcad0fbc9ead8817b9f088c7c13a18a935353a3b9
Date: Tue, 18 Oct 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666059053
