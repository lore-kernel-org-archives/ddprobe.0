Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178D854675
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711223897; cv=none; b=taf4ZuxC4Ibuljy0nTokI8ZeWkKRPy42fTYjQImWBrVqFswlIo+nJzjqDmk5tPa60RVnIC077Sj0uCpeAg3pJSbwkCJBekx1WUZKdMTj5ZCHUK2eupTisLTj76eCMEnLrKhePDe/xaYjzwa/ZcBlkiS9ThR+rGDwwll2jj7PNK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711223897; c=relaxed/simple;
	bh=/+Rk2bM/O6JsJJtdS4m5xrdgyPbVhF6hnyIncTbTRaE=;
	h=To:Subject:From:Message-Id:Date; b=YyOhXDa06QVm3O7lgC69Q1hg1KFx4D31JtvvK/rsloz1KRx6gdJqu52BfnEGbqtJtCsiSEHZ8U9ZnJ/LKBnpWrX9yfOJHituAbodsusETHEebJy9P3BsgDmfNYOT6aJqOOr4QjCbLPNA5wRDRo4pleimzyYU3mpFvNySCaE3hEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUIrX+v7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUIrX+v7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A127C433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711223896;
	bh=/+Rk2bM/O6JsJJtdS4m5xrdgyPbVhF6hnyIncTbTRaE=;
	h=To:Subject:From:Date:From;
	b=rUIrX+v7/WISLRqeJSmwjQ2xk0q+2+noW6aGPWsX94eoDQCIPH0zHXVHiYF8wol3Z
	 7LKDMbQgUqDx5uRYjQBLvgdEROht0Zu8AnQLZcFmi39OHV0ic7Nyg6lvWshqWl1Q5U
	 7wox74Kh3dpJLLnrO+eF7wTrxx+Qsn3MRRRHZKkfNHIzqw3LJCkeOAMHTeqhDJaMj3
	 JEEG8JiHPPhiFAzKm14AeMW/GBlGF72o8dS3rPZie6jufWM/eocVtInzjHDxZfghIs
	 qvR0E5G9RdISD5WMNRdEhbydgKOgUGUUafas4/nKteArRRk+f26Rq1c6cldppS/KCU
	 rvHv0LPBMRt0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7507BC54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171122389643.14542.13054286791687862151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb602b8f976e804e82ef10b7fab3d78876c54b6d240a0b608f05953b51becf1
Date: Sat, 23 Mar 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711223896
