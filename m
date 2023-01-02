Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2356F17E3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A192AC433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672632087;
	bh=GsbCXwtLrYOPAsN+/nA8lyJFaCDVFAsJDCLTEyA3BlY=;
	h=To:Subject:From:Date:From;
	b=C5U5zr1iAHz5f7JDzQz8jnEgV44bEEA9iWnugNtNwy26O/Y1W1F0xKc8rn/ctv02p
	 54batgCF+eINNFmFOcya5k34nt1mydmhGIXXRjOe41bN9rB7a2EGVDpIeh6cPhynJM
	 TLRWgRpPF5AKJ7m87g/ka8m6WbjdIanCVfwHugeWsa80PzNETiRHWHerc+A5AWQNh9
	 9v5+yHjhWzLbC24H1krLHRGKUK3HxOKM2vZtJ1nZ1hhEIcc/Eg836bAv8pbkltHOQ3
	 PSuuJGjma0fJ4EdQPMGnIDTKMLGUsZB4w6kG2MBmLZFNDYCZcThvXzPrKkNuQLORdK
	 /IU7lIp7FIL0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77A2CC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167263208746.26039.2222034638853859299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47689f9852002d1a658c775c2980a852a17a788c7973635a3b1818f5033e3e47
Date: Mon, 02 Jan 2023 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672632087
