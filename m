Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E09C1C6B4
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeqBPzDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D82EC433C7
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701260296;
	bh=O6LbCHv+Yp1ipiubanPkCYaM4KRP9mQjtSKjwc+cFRE=;
	h=To:Subject:From:Date:From;
	b=NeqBPzDICp6USXMKW5JGQaJaTe+aVKfQ4uImIx/ZTLQpZ2kwpUXX7J1MwB1Q9XjvV
	 i+ToH8ghlHu0g+JTBIr7B3soW7NY0gpmnELJO9AboDWZFh8Z6/AElvzJatAlx1m3Dv
	 N49+zEnSEvVFGWXttG4L35qFP0gwanhEYRzyLTinlH47VNiUHAwx/G0CkA+jgwxmGY
	 9inNwTL8t0NJiC6FeAz7bzEQehw+bNFpwxUzx/x6A+AezsP5J2iUWKdg2ViZMYeCLh
	 Lr6inIUsnaRgZHTME1xP4CHzjPh4ZcKiZz3BiBI+Vg+Ltpfosel/BThwfZv+T0qwRT
	 jAHkAsvTqKPxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC2DC4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170126029637.27581.1917320058706461322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd83380842cb06d1ed4dc6c508ff6e1cbf4f4dfbade4f55b175d637b0d87cf9c
Date: Wed, 29 Nov 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701260296
