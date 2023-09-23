Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B864691
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 18:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC6BCC433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 18:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695494708;
	bh=mcgaTmFE9d+9jRDotQUgrM6mGqw+7gD619NgcCCVp58=;
	h=To:Subject:From:Date:From;
	b=bFRAGlTQ0XuP5Zod/0UdQEy8ZvAwJqIF9zZtT/SkUqRo2A6eCk8jod2I+vAwc+9iB
	 wALIxlecQ8FtL8fWHU7dGhbJKFlm6A2LhwSlf4h6USi6CwSQPeUj2Zj1Q6XIiTnofz
	 EWjrXiWUY8izH1vzUYHZGsf6XdlGmWJd/BZmgkSe2H0CGjyL0Ct3rnI8OTquvVI5M4
	 +9mLwhO7enh8H7cgC8YqUSOfexfjcbQ/HfmGQlkkBAlxz5hGgpzCT2JKet5azPTFDq
	 ovLj1kI9nWqG48iT3Q5ihdi0c22FOi41dDlkNBmmq3QminoFHvmba0aswtM2QjJx6D
	 QpMOJy8RoeMJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0AF4CE7A89
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 18:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169549470877.8170.8262343060866026812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4301bdb99126510d06e5f26fe825c87cfd2a61cda0a6d17d69832fb470343024
Date: Sat, 23 Sep 2023 18:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695494708
