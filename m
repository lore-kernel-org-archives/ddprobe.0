Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C29BB17D1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE9CC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662440453;
	bh=qUG9ZIRe+Uii+gbiMN6kroF1NqEMkJaqj5ro7gRwkxg=;
	h=To:Subject:From:Date:From;
	b=NzDjXfoE8novZs05kyRQpj9p8UiEmPsg+3/LVlnGv+uljVXmhAeCd7QF3rMMW6mOK
	 YdNaTJDCB4wlD8w0LK0jaWfrCSrpnF8KfXbb1GdsW51FMmRYLdzNINY7oXjs/04vAa
	 g+Hn0TTOLzwX2LCZtjYmG50xTcjCH9ETbmKL9LDKw9YbGwuGZiIWAMhPOh8Eo8iOQJ
	 iMsuHGAR6Xr1+rItgQ8P8Xlo89IJ3tpyMjQjXLv7x9F3t9Yggmr1Jlumwdi/9eZvCp
	 GWpBYv3fw6Ihn5B6RGBBl+5nZUBS771KOuvEFq2pF8Ga2UjK3imdbjkdI7N6tKeOR6
	 e1yBe/Wk2YGxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 527F2C38145
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166244045333.20037.4873094611227651093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892b0ff04236601276740d0e041660d93b9db8a0d13ca74b2301f16e1a0cb396
Date: Tue, 06 Sep 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662440453
