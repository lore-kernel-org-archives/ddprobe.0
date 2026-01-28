Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E74F156236
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769580234; cv=none; b=O7Y5P74UqLHJ67kRcmrjOz+aNyD/hGmxNmy1jN+ppdhVRwc7ip+DiEKgqAZQjzPc2Xx1eOwekDTJX7vx+/JF4m04Q3ODB7TXRbo9NdF5CKM1lFz+Qwz6/Rcw16sjz1H1Xo9gsDwEK3/OjSf7h7R51GGZgEx+XF+uiBZfth3IBCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769580234; c=relaxed/simple;
	bh=Sh5wdA84kNThbOlS1q08WFtZm5yqoPcfvTdYBmo02yI=;
	h=To:Subject:From:Message-Id:Date; b=Mut2VwU0/7g5SdtjcNimLO/aep0mIvlUoLV7PCEC9KaSG7/Ap43T0lQIRlf8+xHwRncQV3Tp3nL3XchZrHucMzf2uV9KdLFbpy+V5Y0np8cTZ8mOanjLDyIEPEWVzkNP+Rrh8gYXQMOcT7GOTH27srrez+cF7k4zugsBHuH9qDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2kCKvOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2kCKvOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C5CC116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769580233;
	bh=Sh5wdA84kNThbOlS1q08WFtZm5yqoPcfvTdYBmo02yI=;
	h=To:Subject:From:Date:From;
	b=Y2kCKvOw3AXb8c7XC59V4iRfnlnCqaUo1d+IGrSUmEhmn2GMFeeHmrSrWzLzDXLqO
	 5lY8/OZu+eTd1Y2TbBSN2Ajy7NB7oPoefBBbjX4vJwjSovIIos+TZYwWEVDIBI9gBv
	 b1vNEC+tUUTOe9PLZuoAH0iUp/en61OO5tYhPxfEk+ogNF/eMPRw0aVo9HNBmTpxBK
	 jZyin2pOlIfKOgc+qHNU4DVmQjmVxvCrK63CUXm/xT2QFN1lHjEhvQ1JWMOqd0XYNz
	 GcdjtjCNEUxGyKa2nBUGXeaK73+IRh7poXjLclUsK55BNqZt5mEw31J92YErpCP2Cn
	 PoGjZIg/PS3vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAD2D3567B
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176958023364.3100.468032896868658602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae088a311674897db36687a3d1678bd8ad49c36a556b6e416bb920a408001f8
Date: Wed, 28 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769580233
