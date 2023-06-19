Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6C9D52A
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 17:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9140C433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 17:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687194128;
	bh=dQol8uggETtIWQazEos/cHYvh9x515eugPClwU/52Qw=;
	h=To:Subject:From:Date:From;
	b=EvrFFxq1TfyqQ9MJ4wupZhg6u7BXz+d2gR+hu7AxABKYv7HeMzQH0OqLgV6r9jr6M
	 iHO88lBBZeJBYlPTALtTlJDJVY7wXPu9/hfcR1gze2KFgscVDmfb2FhOuGcA9I81dl
	 ngbmdy5fkw63OuMyQkU+WQC9Ibn5Gvn1tmNGGe6UTGl22M2nw82K6ud7nzB1iB9ixk
	 n3xq6v1w7/Ih5tgaoDeAKeeYB7Efjp4spAw040+SoNzTwHPg2fmJlyqWCRc9SOeh1x
	 OWCTc9P0ryvwuHtzAukaEJwMvJfe45C5+9+p4t8zej5Z7QCqzWW/WAsXjUNRhbmiih
	 vaCSdJREJV+hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB62EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 17:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168719412870.29738.3842282801088767574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 755d2bd1e24b4c2e4ca2d206e40bb09ae82c9ea4bccb65b6c82af1a3a7604e08
Date: Mon, 19 Jun 2023 17:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687194128
