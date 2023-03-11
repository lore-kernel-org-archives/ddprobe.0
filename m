Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A497E2
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 00:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0FFD7C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 00:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678495506;
	bh=eTUYArcxY/9xtOwjJc0+uftM3yFJscU1BovAKY+k9To=;
	h=To:Subject:From:Date:From;
	b=Tblo2T++ofm4bnDuzxgFp0izclh/7hL/Ckww5eBVEWGL5hXzJdU5Ulu35TZfzluGp
	 vNNMJVbEXxa0AP/qgZMdCEaXFT1SWbKSzGY91phj2xcmjTytkmRY7CsblM7SXNWY9w
	 YJKmxqdNnTLdW8HAJpHAKxtrGu+d5DCcfp43cEjSK3piUkSTWjK1yUyqQOV1Jff6Xs
	 VhFSUhSoMgWsOQRV+1xnTwvBGzb4i0go7uYvz49lXX5amTj8CdY0jSgx2gEMFMablq
	 grAGRqNEezNnD6yYex5/xBil+VKWKkPwS4G3zIvYMdu0nA77nHW+wgEIu+RBKl6tjC
	 EYlVlZFw6M7Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFC0AC6FA99
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 00:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167849550590.11775.1898871619191049882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddde3310df019c8255369f8ddbab195ce15726070b165e5c3a19bd823d412f89
Date: Sat, 11 Mar 2023 00:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678495505
