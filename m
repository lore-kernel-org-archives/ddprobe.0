Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0372F20
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 20:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647289885;
	h=To:Subject:From:Message-Id:Date;
	bh=Ism8GO7y6KK+ttr0Tr7ucYu+ZUzJwBtIs5pTBC+QTfw=;
	b=kBDfniqz7jTk4uEg6pqOXR56Qz1MTXjdB1zGrcsklFiqc1D0EqPGGYOls7Sw9o6d
	eZjp7PmqA6CmukNpkumSbA5QUAOy81gC44v07Bur/LClERc0cVBIGSfm0XVpZ47j0VJ
	XFgIr0HeVhQM3bzDLnNZPhh3GgksCXv4TBac78ck=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647289885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ism8GO7y6KK+ttr0Tr7ucYu+ZUzJwBtIs5pTBC+QTfw=;
	b=QrCwtXffS4oJ8ps5JsXCdSBenjx3qHhD3YWk0fPGWHUrp5z4X5YSuT+PRhE2BL9a
	Xf7d9PbyaCO0MPh2fxRkYz9n1kbf7W1Qb5k+d/K66WmALTUbt4ei8RhI3hT8N1LBg06
	iYjVcka4UVd/BWhm4WD+nwqqQBPh+2ltUrkMqbD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8a20e02e-e6bc10c7-6d86-402e-ac52-7322a172dad1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5ad7f533205ffd3bc0155a1fc9109204f62d7b4d8e2aecb627d9da5b5fe6310
Date: Mon, 14 Mar 2022 20:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647289884
