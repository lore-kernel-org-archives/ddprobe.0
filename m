Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B771786F7
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6900BC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662502253;
	bh=oBlCEXwrylpBl6P31eTxgxOINySjMrm8RTr6eC1MJBo=;
	h=To:Subject:From:Date:From;
	b=lyvmzeOpxrtEbY/zJDB+ZhMMnLxVvHo5mZ7H+hUZzR3htkoZ5KQz5SIrmi9OJRc83
	 VomS63yiMuRMRQtyirxsh7/42p4jwyB53UgoJetw7g3nMe98GfE/ljHSO7UP2HPl/q
	 4/HHfWdXni6DqKSO5baOB0cNXRdXo3sfpUd7TCQpZ9CcPpC4g7eMtIo5zHG32H3BHD
	 xxPT/zT0D7uhFNjJVSEYrqNq+n9CJTvtfDljz3qJkkS4eWgBKDKPxKUU57/EoukL6N
	 nFMupieAjdcUVJQArMd7dO5T7dnTQfO9AZKK51X258CsDJtK0duaLU6OyqKYWQKKvG
	 n7xLQJUe/vgpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56445C38145
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166250225334.32766.4442413731932718745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ce66843d34322498579630a11296bba06ef3ac8ec0f6786b6bb7c1669be9bd
Date: Tue, 06 Sep 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662502253
