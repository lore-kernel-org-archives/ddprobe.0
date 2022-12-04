Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D880E7C
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E3C0C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670116254;
	bh=IYdh4/ypBrffmnK/bCXOB/sauK1ura49eaFp4fuHI4E=;
	h=To:Subject:From:Date:From;
	b=KmOLNZCAIinzEi5s4bRNppPff7DUu8hG9GB/ckzu23CG75cCjl6iPxsVB4MWXH2WD
	 xNIkN4abCfbCctGHvieahHzJpdhc7xANapGKfGAU7XDoY1Av9VTRUptKsgCaZOUQNj
	 It9gLIXWKeOTiApbHa5kd1XL29bYgn3JrbEZyAYkw1BCZNhxw6sE9PnrQyOvPzICDP
	 Wlhhm8jWGC4AxnXudwKCDonuGDmRmzzINrrLKi8WcZWhoVHBbu2TzQ8JtzFELy8Sn6
	 4x1iV3d9OfGaOKILgLTNZmZfZgT8Sq+tG8lEglv9forHwUYlk58oaCuR1/mV3h93gI
	 4yk8MgjYKjPyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F37EC4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167011625436.15953.11441953077141775067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63de8411e6457c7f9a9ba8c9bcfbf522594dc364117e35d0dcd0063a622637f7
Date: Sun, 04 Dec 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670116254
