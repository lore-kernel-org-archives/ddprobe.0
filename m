Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22387F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D8FCC433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665879053;
	bh=PEKN5Gdq5AeUv8qsURWkjUWmjOg+WqzkuzeSxExl8Bk=;
	h=To:Subject:From:Date:From;
	b=B/nsigo5JnRj+eNkcZkBt76dhg7k2LIrRzXQgRHntQUJl/4xL+GuI9iUKnvdsajcR
	 w00mBANngKo5Md0axVYuXS/r0LIMcP+4mXcYT8xS5mhWA7lokuG7FDxpijjjo3F9sa
	 jqqMYqiQrEGHsDcOqr0TNIXN+7uCuUeiaMld6QbEyreBcPoqYu/SJisUVMWIFpgmEr
	 /xcvnkWPhSogB7bxk6IP57QVgw5h4sDlAgnoBqMARqhYttKdXRQIK7aPA6I/aWPRsA
	 C82CtH9taSeOjCpVOJ0PplrAuw4/r0TgkQJdvX04xQscGY1gXG9jo1eVS7jvUy6zOH
	 j4q6LORI64l6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53186C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166587905331.14359.10758318804145541131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 574673f92a7ed2b778185e1b246bb4e716c6e598148a06ab652f588f63ce2638
Date: Sun, 16 Oct 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665879053
