Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35173207
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82223C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671223887;
	bh=5QO9ubKaMsCAnbOZD7nUw9c2khSXFLo1LX12hmg7gLA=;
	h=To:Subject:From:Date:From;
	b=kjHHlTeH1Q7atGpk8iimgc2U006WKLBV2nMNOGpZPO9Ra8vkBcrpRz+OZYF/3tqir
	 vpyv7l8IpmTOAsALng6eEZ0OmzWtyq6vqNgRPEp0UzTCtQIXX9TM+ARujesf+J5xit
	 1IPfawG0VwsqBEoO3xut8F9bj4hPgA5kSvbLTUTZlnnr4Awcjb87iykNJGzBq/ywFW
	 wOVj9i3khRmztWoiO3Jew3m6qyTq4aw7qFy1DfE4uiZFPcXVLnm+YchE9uAVwGjuT3
	 a6RdmU65QTxQQrHAfg+sQQcoHMrYA5k+Pwn1iuyrNI/KxvavVOgaeqwed15xxOzm+X
	 xkAhcTQGXk3tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64548C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167122388740.13540.17629301548379627650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57355146f7a75e52c83680b5b3351f82bc7fecc3ab971b153c25b8984341ab3d
Date: Fri, 16 Dec 2022 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671223887
