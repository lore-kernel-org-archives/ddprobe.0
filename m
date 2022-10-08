Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF34A1C33
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72ED0C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665242453;
	bh=7Y4qK8vV40KQ+P+urxLAYso119FUaoFpqERsBbBunXg=;
	h=To:Subject:From:Date:From;
	b=ZLIylUkUqvICuB1RWDzTLtKkA3OLIGPjlCcfEy/qqXRA3Nc15M3NODJQ9I7zLYWdu
	 1eZd10/C+PPZqtpyT3PBZbzaC+yvjCNGcOUHmqxxraSbshGIXcN8XpgMm4RGDAJ9/L
	 Jrx+D6No1cJfA2CIypBjM6V+llYi2GBBz+BkR254BmeG6+NCydo7uVKYbaMkNZDEh4
	 AlgulDR7OtQZmIPkdGm5VkzAc+PzIjWUatn6HLEMK0ngBgbbb3iNYp6hdlvQEkq6T+
	 qsqvWE9ld20Xmt/e3tnp9Hkk2BnHi/3+BnOmr4oyf+JZk6rm7BnQ9YsVKYlc4yV3Ug
	 HrjEeeHROr02g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55810C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166524245332.21957.15359296031727799054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4e7eac936ab0900bdfb2a2bc2f129a64e56e8b7b288d4c48b43f3ae35139b0
Date: Sat, 08 Oct 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665242453
