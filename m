Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640CD10F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 10:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D341BC433C7
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 10:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692526448;
	bh=0N5tJ0VLLfwRfglJ3dIH7slxibuhv2UdBMu/Zx/AuHI=;
	h=To:Subject:From:Date:From;
	b=Met3Wkg+OKRuSeQa9lzxx9s2qk8xtwHfPTmitP+1HcnQjw3bdKZucfT0B+knw18ok
	 MXNAiWfFZz/vECb5Vi632NfDfLTws7iO254a7bEbgLjRpzX1+qO+6PeVFVg/zlb9d0
	 Bqk1CoCc7G8EUF6GqGSUikNRgsXNqKaQiyX+/xiT3VI/ahRZ/gMtPB7TiYcisBxBJg
	 Kkx2f8a8ZPzG6+HCOHB9PI62pRTYenWijdgannbOQzXy8t/gcYi8bkZCG9wmp0oLXa
	 8Pis7P5Xj/mw1UMdC8P80g+nxEXjv2XeXhOMXhGObE9RO8/u1pqT6MpRkfECsMgE7s
	 wB+Qt1GDUJRwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A82EE49A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 10:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169252644873.10527.12499199554041836463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0eebd385483d61ac332ea4a67bfa078097015c32780e5b5b5d3d672b19f921
Date: Sun, 20 Aug 2023 10:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692526448
