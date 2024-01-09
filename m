Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6A536B0A
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUF/0H4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AFBDC433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704797896;
	bh=ALgAGQqsDskPuFjNLh8C+o5A2+cNjXdSpoRQhvsfTFU=;
	h=To:Subject:From:Date:From;
	b=aUF/0H4TMprgmSRryQnT15PJuCvI+J5dpsnhHDKsNJmG7Dh8ouZip3AMjsyOGn8CX
	 VvU+7W+XLYZljlqpEzpcezSwRtSU7h9ypOu6sDsgPQe3ToI2yNphEoXmpi9Gm2OTK8
	 UGPOkmwblJ9f2bu775Y1/SFL7+zT+Phu/UlrTKa9O2RmC4PDO0H1i0F9kJiicQTZZ6
	 eG9GFJjvft0yy2IOHg4thZq+FIPAXkxOgGqjZw+ZqZI7EmEz9sE62PCgc34/FZHYLb
	 z96dugVnKg2xPKWH/lVsk+A6oA6WDjdZs9BQGteimhtcn0Th3svqEIclGU84WLcxCU
	 WTFl6lEl5Z4pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64443C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170479789637.14109.3440749548501303798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 380bac7800766469569f3a872d740ea4aa6b0ad7b247d854164a3d53f51981be
Date: Tue, 09 Jan 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704797896
