Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264D226F45D
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754645994; cv=none; b=dK0JeE7wZ/egmPNbuaa/B+Kk6wSzc/+8RtQVEG5+G3lz7NU9TE2+rN2u/W9IA5koybCQfa2XCmYRW9ZpWVc6n4pEXWY+Bt800ue3uP6Hsty2TcwhBZYnuA4YayIufgDoZefEwAEN0j+WxFVzRYZhSFI/wYDJ0dj6ivzGY2Pa+6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754645994; c=relaxed/simple;
	bh=Fp+A8Hhz7K+2oJx2CrnT2YamwnqyywBDDf6Da9IrgYk=;
	h=To:Subject:From:Message-Id:Date; b=lArm24t5bM2aaYm5kfueL4+a8e6o7xh7c2fu8Maz+5LyfoOgKcwSyJMQa28zkGcNcIbM1sKw75YksUT6Q14OpGfdQHDR29n458LhU/RQD4Vi9Ur1oz5YyZwtYjdl8pjgwue9t6JiJHq9+kN8qGtjK6+zldaKEdgTn4j15eTd9eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvdCVFG/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvdCVFG/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA600C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754645993;
	bh=Fp+A8Hhz7K+2oJx2CrnT2YamwnqyywBDDf6Da9IrgYk=;
	h=To:Subject:From:Date:From;
	b=MvdCVFG/ZuJc7DMuRZv+7P1xJC5CyatvdYU/Tzd6/mWz+ANMw1yiUqv9s17vYPQVX
	 Kk1PENq/15vJ42wzgTmSizQQ8swjbqIirkCyH+8xIjzO4rK2vkO7b+wVfNFyXV8chv
	 f56t6ha3ZgnxTPyxrm/bXsF3lNyZNgis3sDGsPKwLxE7UCH7/eTNSWb1PUxwUS0Qjr
	 r6Qs1+iTXmIcThuKgvIhICeQ8Ev0AwjV/ZOPbKfkUNA73fb/5dX76oM8eXslC2J+kz
	 fesl0tYupKn/+92ZfVVUojrT5TWbGIQOeTjoBgEyr7tycYq/mTSihsjty1XFFmwbq5
	 5TEwZoEiuXMOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0EBC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175464599361.20230.9858741075595176141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 894662f4a0e8927511bfd9523c5b8b494364327e88cc643c68e68af6c1e1c259
Date: Fri, 08 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754645993
