Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E037377
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="maEnIrIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87EA9C433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697764096;
	bh=UurJuk6+Z9ivzA5KbIDZlr+Hw9CQdjXymzAi4iFyaEo=;
	h=To:Subject:From:Date:From;
	b=maEnIrIiYqFdEaEV9fJfCh7/qnCreyhXUZPJdx39m2JTUfTuRjp3Qx7gOJKujeyq7
	 LZ9IlvikaojnnNbrRzM1T532IJ+fPBgEspRy4ROhOwgBWiN1pjgaXZE2LGRIbB96Jo
	 BOFCJgCXD3k7JxWHfPeXbdDyZCAUDhTd3WZcNkm4Sanw1SSMQp+2hYQ4jI9SQE3bNb
	 8RgS0TnSpA/O72rRSVXRtJwtNIwM6erSH+1aTHk+a9++pPFNC/2d1Whqy5S+g44rYZ
	 Y2mTvz9qsQePv/5VUiKPPB0UqsmaPB5/KcZpAspo/eqEgkuVTst6d/Az2iw3fe7BoG
	 kXJpCakl9pVUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6756BC001DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169776409638.23102.17011738341016330843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc81f713aaeab8c378ce313866b104468205869ebd1040b814d15236695eb9be
Date: Fri, 20 Oct 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697764096
