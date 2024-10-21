Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AD21E7C32
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729518954; cv=none; b=TR0UhyP2lWCc90Cp7ZOSpCgpHSMA8zB+UQxD40haDgY90v/2jUt/xCLwPZ9UqYHzEK505zBUhszmdPcG3aZw6mU5MfFnLZxA2lXfmQUG7I4rTXxgRizrA0aSBF1ywvTNWwhYPE/4Diz8sCFi8Xh5Se0WdAab2zR2jjuUCYEejRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729518954; c=relaxed/simple;
	bh=gJ3Q3/fAikny05T8X1LXlGZWJnIEutDdl4H1tSNQUY8=;
	h=To:Subject:From:Message-Id:Date; b=GofA+OOeIJJzjdYndiS+4X3mftzYp3Iqm9Aes0fGFGzrCNBe/4r5N4EnJuDwMmjrU1XelmoRLdCL90qwjJ1xR1ewUFbvfVcZus/ZkUlwFKgNLGUzSwoPFfwCSqoyEImwRhfuAHg3F0AD7FpN9bra5c8RprbhBFwKDwAVep/tdt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtSs5wem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtSs5wem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2EDC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729518953;
	bh=gJ3Q3/fAikny05T8X1LXlGZWJnIEutDdl4H1tSNQUY8=;
	h=To:Subject:From:Date:From;
	b=BtSs5wemcPNBS37U8LZkmbxrk+DQx4ww8HthKFEd6wfqCSCVJDG7SwQop/UomzMrW
	 80zCUj9/qGo+z4WUp94zn6NW3d0SmTHK+x3PcWCH/hcNt/fS1PilSX+3J4iQCV8seD
	 abDkwXlu33zLxKiqO8cakfnI5laMhgXvYRf8Nqh7maRalwyGYzFfG+qri925kkZ8iP
	 4dWbOhkeNm3XaADMdslkHu2wJxdVAnTFtlgD6M7GSaVRQXJncBPiIhtcLkmVurH3Aj
	 hkcfRCUVspjdR0px0kAotLHbVdaza3Mv1a5ObDh1dton6NBQpoK6cC7S1rkOrOOPbZ
	 22MHTpMIGwyVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C4ED15D96
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172951895360.13448.6391456851154529409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a04e5c0457db917cc556f436636b4fa612e5d7598fc3fa1e9804413241f6528d
Date: Mon, 21 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729518953
