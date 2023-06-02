Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599B517759
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 19:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD524C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 19:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685733485;
	bh=tNVUCgnUEDFmjNtLKmQa4IaOpF9C6kBFIzmU2yXo/WE=;
	h=To:Subject:From:Date:From;
	b=CuZ/yOdAKNerQz6GRAuMpepvvACYEr1IzG60sYR+QTxvLADN9ZDK6DJ8UipkzkIrm
	 xuFJtHi07Uje4Lh9yWWEswfR5SsH1/2iduruP/B73jcaiT+bvYjXzDiuCxGJTciTL6
	 UxlcEipdDN2ruKaoahqfmzVyZ9IE4oUUzrxh0miadZ0MunyTweYjV5e02e/uyy/cg6
	 Qvxnb8AQT13lEqIuK4SlWeNXGVznJ6eVgJGxijugI5gcOSEjLtbHiTzQEdTBSIOVSM
	 Cp3d4Ct6WsLuAw7iLmVNNGVBoEreLb/WDNvYsztAl+9czoOOBkOX19w5iRetbbhr1s
	 AJJeVXz8lx7EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B17C7EE24
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 19:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168573348574.17219.5149341123841017060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d72b61518f31944632bfe27336c6c7fcfb117ba5c519b030728bebaa7253e0d1
Date: Fri, 02 Jun 2023 19:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685733485
