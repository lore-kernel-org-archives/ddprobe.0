Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739B527F3B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 04:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA268C433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 04:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689998529;
	bh=Jote91NYfd/4rHbLcXlM4ib3OrNedWC604QxWd3Y474=;
	h=To:Subject:From:Date:From;
	b=NVUa8Q8Dy1JYBWDiL7lo006hWTNu0CojTSk2s87nFely6V/WJv4CyBQhSDZ121C0r
	 3Tlfigj7aFJpeX5J+LtVy1eivoEELii0nEaqIdU4YwBE7tFnkSo/et3pNC9qIlkpsz
	 0V663hUC0LhAQwg8zjMjh7z5wBJwJDL4cjWrBFOqBCR7H7SNVZoU0QWyz6Gd2NrWcg
	 DkPIHEIwRC7HX/rHZlotbd5RhEgMSk5JO7/i55gn+643kqRpKm+hZ46oD7zQK9gfue
	 A7kQsB2DEHJ7RGmMhov8ZJL9svOSbvU0JCnyN3zoVR95bbegYOzgC/sH+sKMzP86Go
	 WBQVUnTpC5H/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C245CEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 04:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168999852874.9248.9820532173444126409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94826099bc7729325c8a542bcadd6cdf5717aae5700bb161dc2e2e715969d166
Date: Sat, 22 Jul 2023 04:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689998528
