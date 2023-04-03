Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484645683
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 13:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC90C433EF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 13:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680528365;
	bh=mNd0/NJyFLkJLHQVNQLTYhF81dj2NrSJe/IMErP7puk=;
	h=To:Subject:From:Date:From;
	b=BFSltoA0HjhGQb+GWGpYg8R41ZU68zLwuXRtoAy1JY9nZ8v+mpL3+p0yXnAZg7jH+
	 jn3APETV8JBkWXvN7K6L7Zen3nU9pVFsND/wtFY1bRSkUNw0CHLX+MtaLUHyGxsXoA
	 cbndjgi+Hnd2mJfDEyeTa5g+kdlyyAen61cEkc6h7R3A3+tY3keR/HddzXmZMFj97q
	 J4BNcxGvqjpoiVsPUuw8AFbifdTCJf9OTGrN4gTyd4YJY2ZIaBQUV/ZqhPWTHOscRN
	 XFCrhB+FbpP2q3+HXfyxDtYCenBYVEN7mPsh9prsyi1O/N96uKp+xsC+OS6hIdPwfZ
	 6qW8vinEmmzpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F3CC761A6
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 13:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168052836578.7224.16350607235248544954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a5ccd7fa6c15c0f41630e7508d88bf20d3b0318b6a137d80009347220f3a59b
Date: Mon, 03 Apr 2023 13:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680528365
