Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 858F97B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 22:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656543413;
	h=To:Subject:From:Message-Id:Date;
	bh=Kd1LJUC1+BQq6d9ip64nj2RKTIKwMQwo8yt+GEmJ5Vc=;
	b=W9pYs0F340F/z2z2cy6GdtDoxwT7yeFxeK4CJiRdF7LqZFRcWn3tL3iUkeCdZiXh
	ZNbWhmB1NT/ZSDQ4UqqoWNnscgEEkfuuiacUxS9k6UZO5B/0Iha6ct59h/cgPvogmcn
	1hxSP9ZlAwoYdD769ON9brL2dxkMIWYL9GTdL1Ng=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656543413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kd1LJUC1+BQq6d9ip64nj2RKTIKwMQwo8yt+GEmJ5Vc=;
	b=XF63pAo8N3MZoMeh48iKmTiShtjqMSZf2Ne4E7E/ajCTKhJVBWDn4FScsFLA/Pbc
	iKPyWTmJt/0wl/fPuD5lTeH+dQLvDevaE+2dgU+htmXyPs62ArYnKsjecfX1ESeNwxO
	yXa6IUsb12fFWWJ66Pk0cCwM6LBEfjPMK76ezpPU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b1ae8032-622e595e-b5ee-46e8-861c-da479c21da1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84b1a63b3aa254c6df5ef82734e143b2aaad3123003b152f51de2a7e3ac5b696
Date: Wed, 29 Jun 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656543412
