Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64101156C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 11:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1438C433C8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 11:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693310048;
	bh=0je2yxFN2LA3lXmu8O5K4MHjE8ojkGsWnLMsG/qTxmI=;
	h=To:Subject:From:Date:From;
	b=YNllhbc+if474NY8gEKmzxIRi94rqBK/uel9L7Sr8emOTiz/gt0okv9TtjyQwhkod
	 fRgh6zlbeMXATaM40BTxm8/ftZH3SjKG6H3QwVLV+sRyKG7HctuvwstLxZPjNHAYN9
	 unTQ4woEcserFzIuC6ZzFUNkjoN6s9rgb1CH1sYrFWwTVtCuRaDSs9X7L6x4gJOPee
	 wRDaVnfSf3EgRzysN1XpoRREaI9Nctd4dtm525XhQ3YEHWf+iwvv6CwfmB/lMA3Rtc
	 BBZ57cuSMfpjfbBqj2JSCBWqo0VlOCTcF7eoZMfwGREIu+efG027MZZ9Vr34xdNIJY
	 RtKxMBxFpQjDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A746DC83F14
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 11:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169331004867.17380.9531754024875275470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304d0f7b6885ae43c5a6f878bea5c8668cb8a04e3ecf53f4a2aa36c2788229c8
Date: Tue, 29 Aug 2023 11:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693310048
