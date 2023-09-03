Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7789A15A2
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 07:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36FEC433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 07:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693725848;
	bh=rSZA39a6yTbDjS1HyAMLMyyibrYBjyFuQuxGWOFVc/A=;
	h=To:Subject:From:Date:From;
	b=dmyvsWRi9gDWoMhaGfKaN+DVpMjgOoLyYFuw7DMnc0KgwQtkVoiw1CparJptyC749
	 XseUGjAaXyPt6umrtdgyeViCJAg/sAsUlXO4Avc0GPf8cVSB9i6zQjmEgJ8DX6ToP5
	 kZJNp5YHwn225qJ8XfdmiYgPrjjAFC3nEUl1k1DwSOwpD5s/pGdCKtYvjcbBhp5yna
	 rwKrGszHX5Kd0OfZ8DKW+1fDi7ELdvgjay8Vd+HAIFaLD6GjK3F6gbGrb7HlJENSU8
	 e8wB3EB4dHomNO+3hDKiHqJnqxnXEMSw+VW2XAreKlzLQEKQNNPH1+jd4/NBMH+AZq
	 E/HEwj7VBqQ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03B3C83F2C
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 07:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169372584869.27549.13482013137529671488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9454984daaaf1934f5e479dba676ec5f71a6b4c441bbb62218c644274e7d84f
Date: Sun, 03 Sep 2023 07:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693725848
