Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C796E2564
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B855C433D7
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668588054;
	bh=7cZ4o3VOrjwUSobWSn7cYWwjfq9pF6BsPX4QIEGpKiU=;
	h=To:Subject:From:Date:From;
	b=ttypiAEBdoMVEnqHWAt2YXwhLQ4dQNB7Xd4cP+OKAhgnOiWPpjQ5mhBQWGZ2f5MBa
	 fOCbSqXYlUg1iD1uHBzsl9BLE5sXZq7oAJMhboE6Gl5wYZU0Sn+UBURLAKo2+Pw9IT
	 y2ravYVO2tsoCJipVhMosRYXgoJ0KLajgnuNuLF6Fug8KWlqcMYHXop7mB4l+IQNDm
	 Sv1F79NM95C3xz4YJALJQBU/9sAhv87PEuAr+lhgn3UBoBIdeADNXkCowJ/3EonRMJ
	 MnKmGGfEKBkPxgun5W0Eq2mCb3NkcJruEelzWKlvVgpomd9I8aefr4VgIqdLc1L0ti
	 nwIaltRIbWmxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54CFFC4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166858805433.12435.11589094908122302772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47dfa2334b86d3bb0e5c541c0739eef5059f4499ccc9237bbbacac4663bc005f
Date: Wed, 16 Nov 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668588054
