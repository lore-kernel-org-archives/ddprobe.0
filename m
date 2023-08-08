Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C95659
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 08:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4FBC433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 08:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691484188;
	bh=yqivYJM+4ClmwphG/1btG7j9O+YVC8sVAFX59cIzVx0=;
	h=To:Subject:From:Date:From;
	b=kHJ1lHsZl4l9Yu965RHIP1LuqGRgBx2wvMkjs56ayODctRZhHAMuMti+ALd0dGTi8
	 xxqLbMfoPvzDwxdjiYlW0J+wg4S/RN88rc/d+I0xLFgVpscU5JxQozx+Gkl7Nv1CSH
	 F8ZWkKf8BsL7XTGF6+LcrU62YE9BfV/sh7kh1ViTzafn1lq572evNIPGA/VvHfme7v
	 PlzEaS+zR8EqIAYfsZPfEg8p4l6j62cYnElqlPrTZUuq4L6+RW1kZmQ6k5FladxwC/
	 0HnY0p3yGrVeVgOIlV0Er8BR5S9O8zmc1WAhfx//Cer8APBHYePv6cbLo3FmadsyNE
	 Ek7A8bi90lG6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A76C6C001B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 08:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169148418866.25649.15574076752790119381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b87196c0cec42fbf7000fdfa8cc5f303681ca3c16bc02298a1c75341dfd8fb
Date: Tue, 08 Aug 2023 08:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691484188
