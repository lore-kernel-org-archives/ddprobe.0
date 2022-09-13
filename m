Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCAD31C17
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C7BFC433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663044053;
	bh=O6Tn4iJqbFYg1R37LMER9S8HKb4qteZmmqD54IPuPZE=;
	h=To:Subject:From:Date:From;
	b=VD7cgQU0z05GN7ytaVBmNXCXunbh0NX4Swc2OFIVp4L9IQUfO7BynPw/MsiMeHUmO
	 jhqgOPDMwEDywYpoYcGAd5Gkba0PVZavtFLW91wcUhBhEK/o/OBZwbU6hNcXbOqRC4
	 xM9PMAqB4e1vsPw29GoAPpWhpzVH2vKjPPJqi1qqdsMaMIJhCwRXL3aKwIrbrsaf2n
	 yWMGNMq7jDdEy/yiuW3ULRwi2hGehWoJ15H2A/faZnaBNTGxg0kgMdiIsfta27bhVE
	 S5oKJoGCZbDtZW4DEwNkWHW7sZeEKCXHBvfxm/dFjffVgwT/GLsmhtzwRaGnM8w7Oe
	 KWyrVEsxRFfqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E72C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166304405331.25005.13752199673976583270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b42d2b929557115bf79c9dc187bf7c0017f094ab3696bcc115823c7165b3596
Date: Tue, 13 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663044053
