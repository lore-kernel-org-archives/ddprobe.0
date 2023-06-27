Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD19846A
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 07:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42D5C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 07:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687850588;
	bh=6g/+Ym7511o4SVD5Chl/BlZ+KYCeFNnTdzHc5pDjzXA=;
	h=To:Subject:From:Date:From;
	b=IqjlUpHygAiZGYYi2FQGJeL/k3rOtuZpK0Ehmw++rlS3OfaMrIpdwvvoG+j+8FT3Y
	 qAj0yrorKkGYSVT82h6ENdsUR6eVngrHcDhZXcOot88Xq3FhjDoTi7bYbtiQ6Kunxu
	 uHQGo/4zhZ8KKr3I1sqlEVTCIcMpgAi0YEKBrNCInX7CmG1Z0xgMhdwurmFLChbNxc
	 NXaf+Ox8a48dD3VIDrW7W3fgdprIRwobrOgeR/gVjmfP+dXCd0HUjaLPLRegzEuKu8
	 wracyLoJhYRQyP5NLNNjX9gDP2ZdIqWQQk3OV1V6qzgKtgcC8l4wi0cNTsozwVORC/
	 dBl46HhCbirXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E86EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 07:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168785058866.2414.6436804195576903989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52cbd1afeb80815c6730d015d88f6a8f35bbf3065d58138e41eb497ee6d83954
Date: Tue, 27 Jun 2023 07:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687850588
