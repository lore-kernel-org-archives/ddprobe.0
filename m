Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73EC7E3
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84FEBC433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672048887;
	bh=awt2i4m49xhZK08Ycj6e2yIzVaLKVXOScR7XzNKgrKw=;
	h=To:Subject:From:Date:From;
	b=dL3DvBtjQ7ImvV+g1+sFsTH1qHx77Dvr3SRB/xNlPqlI5mmNZCOsUWZdGLaVLFHNx
	 BLiDJsr6Q6NQI/5TbteSYwpREl3QM9tDSFx0v5+STHe+Of+cHqBEc8GSUFp4tnX5uG
	 chELYDeK6rvJSdhHDN1DFxkkPgXj5EK73+57VyE35VMjKSwzz8SFzFTfhu+/63Gnnu
	 YhGIc6cO42YP4dg2ZWtFKDGK8YPicbFk9y6bIt2mXZRrc1tJ61HXLiL0Wjb2NTCeCN
	 HnouQ9xhGpMsaE9IP5LH2/J6nQ6ySh2FWf7+GLyXjBePVbN3tMxw3l1fAoNDICo6Xp
	 NbAwpZ5N4cqeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 676EDC4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167204888738.8823.11693292561383107277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43dcba16ed0cf0d00c05c998487a02b748f4dab6c8d47a57251ae329ffe02bd2
Date: Mon, 26 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672048887
