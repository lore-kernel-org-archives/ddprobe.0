Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596D210F4
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 11:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3049C433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 11:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695553508;
	bh=xy/xjAJpMm6/u6Gx0L3agsHZSnrULZTN7SKsY3oi9nI=;
	h=To:Subject:From:Date:From;
	b=stx4qRZmMERr3Dw8lHJxIq1x0OuqEc8/oaid2xme4XgBgAPxE1RWNWS1x/aUehxPq
	 s9Yfu3tQzs78z66xd5JHnH50CDGjlZ6lYBcKFcC6BbGnKrwz1UiBirJJcR+0MU9qZ0
	 9JnMQAnUVBX6MfbIYs02zvELDIHEqMTR7ZMs/9It8jqXs01nFoc50BM6Gus2kWrcC4
	 mTqWqyWAkTLFWA3zU81zpRrjG4t/0LJLnGQ8YlcQIiTiZVNIaulTtcQKM6QGNVQehV
	 eiE5n7cr9G9Rtqnaa/SalJm6xXY9Whfta3fLmIVOXkUaQfGy/gPzB2R414KQ+AwaCr
	 BcUnnh5fh/ITA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D76CE7A88
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 11:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169555350869.23359.10308134588721447889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4819a876493c0dd690e3e5a8755089b15f60900c5091c2d23b7e9899ea18ed69
Date: Sun, 24 Sep 2023 11:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695553508
