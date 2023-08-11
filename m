Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3DC6FDA
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 14:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CEBC433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 14:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691764988;
	bh=dI2uUFWtzP0B9QgbhF52UiIiaaekns7k71W3ZzC8CcA=;
	h=To:Subject:From:Date:From;
	b=B/oWJ3lv+7Kdjr4Vcq4Lq8mAKitu4qA1J9HByu2kwn+Nw2B+BvYkm0FtyjukzQQOB
	 zqJHKnfD9boVfU3FJr0fpVpsvDaiHGp8OmFeQO/f4lcpbWHit2nqEiytBBhudytSQ1
	 JxucjQizr3I3E3XN+iQvYhsQOExPw36BMjWlHuaRdlm2B4BUg65yt/ue6uqSDcOzjd
	 +soJxWvVNXzxdZ8MQRQrXEmtamGXwKm7KO37uOxnPSukAGF2Sw5S7LoaxLnfaIL3v6
	 NIVTB5zG+DAvOUP5b3p2dQxevzMvUtC7nGr8cqNmhm5hdG7LhMwtM024gx9/xB60sb
	 BUT3LOPbEaZ8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4FAC001B0
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 14:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169176498870.9221.3494648587823152007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7177adcb05928d87eb325550ff998e4f99af85d7016ce0b874b77aab858e7d57
Date: Fri, 11 Aug 2023 14:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691764988
