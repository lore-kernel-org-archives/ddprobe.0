Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688931840
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 11:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05D47C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 11:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674301926;
	bh=Ke8fQjiymp5e8jUgfN5oEW01ks6BCnMMW+8DVuTs+M8=;
	h=To:Subject:From:Date:From;
	b=hb6grJs1f3H/Oz4s67lqgpakQ/0o6bmIcsEQHBNJ/F7DGIfxNj6DXNbBm2IzZyk2i
	 2npBv0sGzGU7qr78yr21JoHwLstFM2FGON6tWh3J1dUQIp7AYbgfOAzVLi0UOiz9VV
	 Ynnx03hM3FNEVkDBf/52Rqe1x8hDWiT7pVgjR+QmqQpa+FhRMJOadgaib4ANDKvjfJ
	 b1d1fUtP7tgZwz+H5PYfg2VZ+ntE64p1cUNyeeOLJoxYBI7QmW326hnSY31YI/cCxN
	 YXeHJLBUFVoSB+f88o+WYGxaUl2yYop6qPSWNDFgvWi2QI0ynqKHXHShGsBxSLJ4fK
	 yFl+1krFVbTmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7AEEC004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 11:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167430192586.15230.11705807861861721432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd2f5c3ceb1fd72d43353d68af564c8e688aa323b6c640a006f7d973863accf
Date: Sat, 21 Jan 2023 11:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674301925
