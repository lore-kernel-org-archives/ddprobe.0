Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4F8365
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 06:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8ECC433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 06:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674369125;
	bh=kv9qXVWF1phob7ASWeCWDlQaYDXMIERfGB+mWJK+p1M=;
	h=To:Subject:From:Date:From;
	b=YGf+s7h2kwC9Is6Xjfd81SH3ClJkE15EdN00ZoSNTFenjtuQMHwW/FJTkg1ULdNkw
	 a+WSBOEcWu+cSKiZMJVro76WrovYp8tTbH5qR+/an6KG+hjJJPczhmUx7uWN5Z+2TQ
	 PE21i8ARMwFFvb3bbBzyd+dLkjPQpTOfPC4F2q/uhVRrDz2JNT+JOeNhSgIYv/HA1C
	 bBV671QVkL8ut1MDnSu1+NrKcj4oJzURMEXtdiIQxP0vQbcq3UIyFAB3r0tKkRgrUx
	 IZdAEuLuowJymNmAGpk09H51+zzNbA/uVBPdlY6Dr7sP7H+/xbOW5ZES1qsic2EM4J
	 q5d5hXE84Q7vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1983C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 06:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167436912572.17684.16540453250332956908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d8dc31839ae5bd368d0ad36a324aeacce777f7fb8d54951d6438f4eab826e8
Date: Sun, 22 Jan 2023 06:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674369125
