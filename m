Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1256E362
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 07:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654068419;
	h=To:Subject:From:Message-Id:Date;
	bh=VMQG9/cfKRLd58iWcFI0XHZ1x0RdSgU6kzda3Mlw7yc=;
	b=Ot8oUTl5/8DqDoG+IGa8n/fAkn01zCTMLCC0AFu01hLceVQJTOY3m7Xs4bCIO7XJ
	nWibU3ZtRtylHQ0M3x4zS3bi+z7LRBRMsRRyW0Ksqx7joplos3t9Kockmh8E2+Y1mLj
	HAsmPbrM17ssLVjZMvs1cmrPXq4RbNQK0zIUSTPs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654068419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VMQG9/cfKRLd58iWcFI0XHZ1x0RdSgU6kzda3Mlw7yc=;
	b=T7MDTX1ILCJ0k3pGVJ52HDX4Sci674jCMllvrTrrirY6MJtyc7z/0zNJUoy/8t/u
	weAcwT6EpmH4ps+5WdNOuTg6/kgaQ7KDKKSt6XdnvVQYzFGCJR6luTYGJ3fpjB9jk4U
	UorwZ1xX5txVwj4Du5LE9gxINzdTS3Mlb94+qu5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811e291b1c-8ba48dc8-2b53-4a1f-a951-fca7ef877eb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4236afd76511588648825f658e9a54173827d808baf073a5ad7e47cf521f147b
Date: Wed, 1 Jun 2022 07:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654068419
