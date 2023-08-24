Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A00CA76
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 18:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E064DC433C7
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 18:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692902648;
	bh=wFdezNVLQdeyJWmztugMJGeU6ISSz0Mv6DQBu1tvdbc=;
	h=To:Subject:From:Date:From;
	b=SeWzWrDGpWx8u+rYrzlbXyWlnAuv/MLz6TS4jTKvonpFP40oDoZIUP8+cq8+9mCCp
	 leN2oFNDhI9QUEYd/J1cop5i1oA48MfHOaWemldiZUWgw30zs8r/Z48M2WPaB5Q6El
	 gtx4oDk2LhE4esCdKkRHe7zw5wVagQ62JoHZrGoIA6opum+xfY9Xj29f0cn2Npdw+w
	 vj5JAlbSeqSR/rRSehgarEfBdn7LDWBIOa+nvQUcs7Iu7vrbb9hxy2qO/2Ohd3Agp8
	 Ep/VaiE3O5f73gQgBgjg1/o8hgs91CvXFJmhnnVfXpcU7YnLQFenQynQ+R02kx1irZ
	 4shcvK6OogsOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6231C71153
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 18:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169290264879.5417.17825288316078347878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec88097620b077d2a90a902dedb3136a84e5692d160ceaab15fd2fcce697eb9
Date: Thu, 24 Aug 2023 18:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692902648
