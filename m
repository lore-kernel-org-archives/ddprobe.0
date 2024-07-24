Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04A6200B7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721841353; cv=none; b=K1XdoD4Fu47MfNfuu4LAk3A5msKkvwhBulTwSGoOcWiKCliUrhG3h5cOXWWggEcYVsEu0xsup7HKV6l/iv6hGEe0UdBb5TsWRc7YrrpD/LX7Uii0gUmqzYiPPADzpkiieiV3/GL9Th6wAR/LrTc7qJbVqyIcHMkq+cQYQZdLGVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721841353; c=relaxed/simple;
	bh=6ep0jOckji0jbyPoG4cYIiIxa0NaY9ft+NEbwrZyQx0=;
	h=To:Subject:From:Message-Id:Date; b=b5t2Q1by2j9IRAgNIFihyuX+LuZ2fBMZ1uynUWTLl02+PhuuCkbDrzFM/4WP4iuTQScW+xiB3KAJfRqDodqpnPfYmSod7eB+FbPBzxj+0sCkYBr+UbR19n6GuT60i6hV2E/ZLVmXwdeYym0q3nHt1V+6QZ36AsgC5Ina5VL8O4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDR9Qjxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDR9Qjxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DA0C32786
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721841353;
	bh=6ep0jOckji0jbyPoG4cYIiIxa0NaY9ft+NEbwrZyQx0=;
	h=To:Subject:From:Date:From;
	b=JDR9QjxwgFIqJBgB+MyIwVyVra+9oqG/Av/y/tXYWA+9U8wXSY+zellc/hcdVoKT5
	 ZoWBbLLfjkHNJGSLjhzBPMsCMrV4I9AQD7dGmlOerLgpIyL+aC11gacDx5mqo0LPzh
	 cXyYnMIJcNjsG4oMGekJXxrMqexl9m89OKO6US7/i1/8REik9Lt3vvte0GD/e3m6hN
	 Us7UK7ykK/ZuXPoXPweYYDXGDMVzvIbKuyXlWemICZU87YgTDu81gQ2KGO3T4yNnFW
	 vlNLS4mVkaxAocGC2Xi76gvX5MstE17QcYYLB2kKdPyinkxNbauZl6Tq8NH15ECgt5
	 Ce7G7JyJaTr2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90938C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172184135358.20101.15958949252784814481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf052e049425d74cebaea88578e74475aef5aa8f75b4a50d123ba9ef8bdb1c34
Date: Wed, 24 Jul 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721841353
