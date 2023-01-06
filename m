Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3BE91863
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A073C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673039487;
	bh=H1bsLLBmxzHlfmPjNIlLf+H1EFxiKBu/CgnRQjO3nYc=;
	h=To:Subject:From:Date:From;
	b=H/DYQs3Q/JDBliR4KuXbE1OI6nLB58YA88E3GDPM03Y4+y22uuv6MeS1oAUJpKelN
	 QZgpWcIvqIJ9M3DVtj2Gl31YvYOBRHRbTyymTKHaD9MAmlHIu9wCi0eQHsS3/u5eGz
	 mA4KDzz+wHp1FqSiqMldg4n+5rgdIWhaax1Ifr+LXrcgolAqvQ3ZQMA6nv+NyUIA5g
	 qVJcK2LcCHf/osauFQDuo9bA5gNkqBr0tLGoiYVnXFJaAfvhUwtWAtVkQHNhUIQkIl
	 IQGeN0Q90mOKl2mVsztTaFr8fXiV6O9o3KE3gLhJZ1+HVP1qrIdneRhLzjXtNlUzmn
	 qVVw6gbhY4wAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D1CC61DB3
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167303948742.27621.6157852565466364441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 548a5e2abe63fdfdfc8df8b32fe607b77ec93a86bdbff2ad62ffcd958f416820
Date: Fri, 06 Jan 2023 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673039487
