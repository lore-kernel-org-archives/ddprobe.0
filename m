Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E599944F
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 23:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB915C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 23:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687735388;
	bh=m7QvZzOxjFKagk/5+FgMqQ9EujOzmubvmf7LPJam+Dk=;
	h=To:Subject:From:Date:From;
	b=KqvmoAHr2NI98RMe3oDyPcLcRMWV2vzx28dAw6HezjywFYceRqyB8i185It+1Bpvd
	 zhBcWs06lm6ngQfzgGhf9CVdS0FN10BJterp/WCAC6g/eiKMhqT9EjHf1nz2TI1Awc
	 +BJH2cq8SId3UTbhw/+ivzx/YUaLBKCfiJQ5Vor4vmPzjQCKj1ozY9cc3kYj3Q/g/f
	 pEBeMK6ilINA16yTlDylRTekEaR3LQ4IJ5sC/baP9M+zXsAXZyTZyjJyjnYtqnNInr
	 vBLEEAi5NJfBMQGcJbRI4Y4E9Nltsf2vQAi0vyqJcSQppHb2OErddWD635TbNKYUU0
	 UgHdKMbzVV+LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE127EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 23:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168773538869.5766.11175838070492649309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042aeb97d631a72055352f42201319d979531d95f05a31049723c25311be4205
Date: Sun, 25 Jun 2023 23:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687735388
