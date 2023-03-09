Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1B9321E
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 08:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF5CEC4339B
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 08:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678351866;
	bh=DbLIrf37OSkY3ohv8Cm5HYrPEQoYErVYxLF70F+pGQc=;
	h=To:Subject:From:Date:From;
	b=j+Cr44JGp2R/4T0yrSSj+420O2Ah7o4CW8Xrz1WWLxRHZvAcBUgNijMBK0lnDlUJu
	 XLUqTg34uqCvu7H0jD96KTlefGL2ZnuIsNwgA1KDocuDx/aOBB4zMo5t0cZvJ4Inic
	 4MIxSt+dYLGjyTMNWZPAhbowLnnYk09JcNsUnREwN/6RKIXB9C4+vSuulvSx4AJlwy
	 Dam5VpXBHRjJylQ0LYuBedBJvA6R66XDzBbaarncuWzgFgqLmhVTGhurlgpVzeS5D7
	 nUVgjnbzA+mntuzcpVkDfWNS9/DdHKF1cqBUM7Zohh17zIGCMA0OYWQaLvc4V7F546
	 X42/02kA2GaNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB25DC64EC4
	for <ddprobe@lists.linux.dev>; Thu,  9 Mar 2023 08:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167835186582.10978.3924630237175868897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 607d41a0d9ccc8684208c6e67e92bcc539bd25a9798bdd5b41dcf224f1567548
Date: Thu, 09 Mar 2023 08:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678351865
