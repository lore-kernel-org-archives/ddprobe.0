Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A247E
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A9CDC433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666164053;
	bh=z/KZ6VnXU56gLSxazx7Smp60ZLM16lfmYBbLIa0rkBQ=;
	h=To:Subject:From:Date:From;
	b=osAI9C3qrH3DqVAgQ6Kyunoc3RYOAATVFspksExJqi7bSc9wD7cJjDMSu2VvKYTN7
	 jBzFftD2+KD9OxnC0qYqJAlVBnvzn+P4DXfngOUzdh0L9NDBeSE/X3PNzndKGDLN3L
	 xzDMz+Naqy2ivVlKq+qLRFis6EC5jfOXo1Vfxlg82CzJpYFvmW0FFvKXp0csMG8A6+
	 Fmj8QRUzhfazPL1hyuYyPH6xvmfG0XbqkXuiwGnL+3O0s4ybzSdKZiXQZqqKK/TyyV
	 IxbEC/wVy6qfyZ6Coq3HlUcM6fb44SLsfgiBa6Kx8YlBblEP0YsYj4T7MPgWs5TFGA
	 l3nCG2mKgFHeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52837C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166616405333.10556.4340919855208487157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fffef33d7c388a276b27fe86175a303772b790d2434c58162dd21880600768
Date: Wed, 19 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666164053
