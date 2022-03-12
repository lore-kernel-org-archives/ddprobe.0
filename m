Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745C56134
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647115285;
	h=To:Subject:From:Message-Id:Date;
	bh=DNOlKZGJoJfl9Gmm8yd2ZFlNS6pBPE0BJptimZExmPs=;
	b=iCesywxQHZPTeEQP3leU84pWOYCYQIcXMiTeYu/iufyE8AK2DRIF8DxwbVhFGMK7
	rkOqGzd3A8t6HZyL7glgIv01t+eTMsw/Pzsvdg3hnuVCZcCQoMz9N+PT5flliXlbuCw
	53jiSVSAytcLzPJX4Pdom5+Vl6wFGRv62aQta92Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647115285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DNOlKZGJoJfl9Gmm8yd2ZFlNS6pBPE0BJptimZExmPs=;
	b=dXiXk2sxph3/EpVrMEKU0TF2+0VKW5/Rf0xShyZNHC5OL/y0tMbvQIXrQ7v5y4bX
	SS/CxUjPdoP6nEk5UYEwHMxzfumGKkoX1urXBJgl6Udj3bil7VbK3bix3c02SZveUFh
	ANPddzih5DpzXnI12YXFoXSX7mY9SVcxgDyJQqhQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7fb8b137-b5ca3ff5-81ce-477f-a26e-3061e1f3d951-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83f0c5abadbd3671ff48380f81d8563d7433a86b80891d550dc7a07bc8df2e45
Date: Sat, 12 Mar 2022 20:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647115284
