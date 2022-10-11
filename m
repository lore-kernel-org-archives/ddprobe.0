Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC993C32
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E8E3C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665511253;
	bh=3R5gOyWd4uz0I7aLCcEHaPcgP9nbc0sOeBku/dz8UfA=;
	h=To:Subject:From:Date:From;
	b=ZOTo7/9Pb5keGyRIkKkE7fgVO8OUuTOvTdsB1xvXOEDtQ4DNgTpfhHwLcQLyw/0Jx
	 VL41/XCtdsS3tCH8DBta67fSz6fu1yOTPYuNC0xDenV5a4HPV7d554+VcX4/OMy5C8
	 9RnfSsw+aA+rPy5YzvoNWa8j7Hb0MPPR3H9hEn/YpANacNHEpag6R2ezJeOaMG/epy
	 qkF84xAN+YGFgNwSFLQQdqAMotJ4S3xoENtei8LxpGLR2vbYJ3Kprd9fBnaJdOJV8Q
	 2osgDuw+TxJMzprSNeUpdRTmaQFvr8hT8gx1fpDLH0tIKRT3wusUFmwWG3jX/5Otla
	 VKnVrJIDYoH1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54852C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166551125332.2969.6803552875107634392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e882613426a3e2556f845c1ee4278794406e94764e9a57eff51bb3c0d41cc1ae
Date: Tue, 11 Oct 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665511253
