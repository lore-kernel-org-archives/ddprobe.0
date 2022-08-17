Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1392F2E
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660751452;
	h=To:Subject:From:Message-Id:Date;
	bh=rVBVVs4aoLMdgE1uXFBLkPWdjFl99aQ+eK+LJ38EzsI=;
	b=D7Jy7FbkSJXN/FgFMGc6Cx/2z+vse+hBczS1iMHrv8Afbo4dxPgbgQekMCvpiK+e
	XhZL9zpvH58wUyG+oPX1mXPqcOf44ZdVZIn396CSAtuqYqKP+K0z1qM3P6I4UKsbV3w
	BPVC2H4aedRHao4fTAiZay1RYC9/ZGx1t2zHV1G0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660751452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rVBVVs4aoLMdgE1uXFBLkPWdjFl99aQ+eK+LJ38EzsI=;
	b=TvdIWiA0WmjssiEnmL4TAsq7zGLJ9uTu0qUtUbrm+mEWz5+z+zcHRkII6CEr5WZI
	Rvj29C/2Ppi89zrKF9fjvFQw6Gm7G0wpz15m4ogrxzN/QGjuwaturxLohGjSlquMyuZ
	s3WqpdH1gPL7hNPVj7CAdnxi/2toU2PVgwoP7wxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ac8019c7-7ddcdaeb-6fae-48a2-aceb-5b142bbdefb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea718ec5ccde5b258e1534f1d9dedf3466d2cc885f0f7dc5b2e8c15149247f2d
Date: Wed, 17 Aug 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660751452
