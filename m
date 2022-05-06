Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF6C3D87
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 23:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651880818;
	h=To:Subject:From:Message-Id:Date;
	bh=FGAT9AxHaRC/DXTO1yk86teTH2QbdNuPL8tuQt1rX7Q=;
	b=Gf4AjQyNzkHdokmmcGSckGypLFOeuG38ihdZRSfYyqyP2jE3kXSGtozrTbzALwLU
	9MlU2P1vvCL731HV9PFM7TlgF/TTQ1uP2bWTEyenmTAH87fH6WjO9qDVXSfg+fWzzgq
	/E3S4k1aP5cZhwL1sBlKWbe/XaT5Jt/b0fg89PRs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651880818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FGAT9AxHaRC/DXTO1yk86teTH2QbdNuPL8tuQt1rX7Q=;
	b=SZTxrY89oh4iDAy43somh4D4Lk6Zhca4U4T3CPGrJ5nJtv+HQzGDLby+slHH7vpZ
	ErJed3bD1sYcnYVv0lr1CvJ76QF4N480e6Y/yBtRrg5l/Y1rnec6dniyoUpAocJAABN
	s6izf7+Sx0LayRM7sDGLqdGAEQmzfQ04TaTwA1io=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809bc4f697-b5dd200e-51c0-41a5-9d64-913068ad7aa1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9962633eb8cc0a97975a30348c1b2ff1722ae8ee8c338dff7d575e12a4a07c46
Date: Fri, 6 May 2022 23:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651880818
