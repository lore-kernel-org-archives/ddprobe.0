Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAFF1634
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B495C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671174687;
	bh=E5qS5yKzkd3P7Xwmg9sf7GtIMu0yLUzlGlHjNQmeFdw=;
	h=To:Subject:From:Date:From;
	b=Rr0TQR1xsrglZowraX78BiuRgAF1Ax/YUCUcLEFX/ZIxgczS8Rt82j1BdiSSIy3OB
	 zqssnC/cy5Wbaw4n/fWKo8ql8Dbf9ja4D6pfIWcdqc25CYw6vf9WjJ4C0e4beq6u/i
	 E2014Bx7BCQmrJwd7MirDifvsuRtb8wxfelEinhe+rkV0JZAgpppuKUYiu8VskT02/
	 3ZhupRhGjQ/kPXcaXFanQSCXHLzCsBhOiZpjBXryeIvNqblQUxwGA3LxwcP3uxjY6+
	 UiLiF4vHsnjA6lHF3ApQ4LRik9NxRDF6XsxWckA+nyo9At9SAZet9SAPkiJkZNJMGj
	 JOcnSbLNIqvPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C039C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167117468743.6860.12662102097759367089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 584b396a3fd961020d5592e2df58b263bb5feb583831e432cc3163bc206591ab
Date: Fri, 16 Dec 2022 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671174687
