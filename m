Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E855C8F57
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E75EC433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672776687;
	bh=tBf/gyUmpGpqRbaCjuEFsY48h+Pg2v7IwR2l9CGk5KM=;
	h=To:Subject:From:Date:From;
	b=aNNAcg0Wlywik+ppdjl/TbKz6MJP7k5G+uv/9sZXALUYDOX0TZnXQsLyDTpxEhI6k
	 tesrYbyQbg9pK/FcBoibHwQkxUIYUlNSddnTELEJcD58VRZgGeo38tGf+lxUHs2uuD
	 TO694YCrTh/014EY3B5RSsg36DEolv7+yuSh2+7DFfuQmwNIKrQeulCmEYteziu/5e
	 muzJ1FKTOtLi37vUpN4HiPR32WY0H7FQPl4MGIDJOj5TXxCY07qQxKc+YpGEOqTHCG
	 uu9WY57hOTPaKBwz/c5/YJcZoro5JxcbLruwotNVpO4qmCoxdeak4LCLyIJHSL0nX8
	 Ds2iG10eL3JYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D950C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167277668744.23906.4983989160658001259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded678f21c95aecfd4fec7761d5e5568994f82855ab634a046375e7a85f6c47a
Date: Tue, 03 Jan 2023 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672776687
