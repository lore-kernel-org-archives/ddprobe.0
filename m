Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA5B1B86C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723668954; cv=none; b=UB+GliVKZ8R5RivaqI22zQzkYqMm9f/cx7ZK4ry7nKTDrnIqY/p0OO6bHK+ks7ty3IdeyHuiEnzkn1du//XFEpj9kzacKS0fswnefDqC/b0chotI7Uch6uTaIC0tcjgcHgg2zUIdkfCwsusHdCRMli/91cx1kuNrzCj+aUG5BjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723668954; c=relaxed/simple;
	bh=uWLPfzqw3sdtDJGu5g43G9GF7vOBQ2x07eb9/yJspFw=;
	h=To:Subject:From:Message-Id:Date; b=GD9MLKST+/KgMVNZNfk8Du+YQ1Q94a6a7REztBqL2qNEypRXSnK64p0AUFWws/pefFDXLk9Uv+/SZNBQf/eTqytAlkXMehqNOUo7VMM3qGq1vqTYDUTcET/tRXtynqhAgutUIv+nM10Qcfk/ATY4Vuh4TXhDmNJiOuNsdWXb6vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBSLzykL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBSLzykL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3035C116B1
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723668953;
	bh=uWLPfzqw3sdtDJGu5g43G9GF7vOBQ2x07eb9/yJspFw=;
	h=To:Subject:From:Date:From;
	b=RBSLzykLlHMCLDCMhbPSXvaazHisJzOkJL6PpNFV2gv8HriV/t2gIokdsmWLXDoAe
	 qxXu0OUQZgMxsJeQDJEUCROTSxmqOcJsoQ4bTVKftUs3i3XM6N3OSkMTs28WTFIWCf
	 03rb+3Xp0JbV/vxqf/RweRdiSbiUKms79WO0BzSdROzP3s2wTYiyr9pgmdcXojjNe2
	 3QdUz4DPzsyhLxYlHgnQFpCPN+r7X72Bpcmo6A9BNtuGaybk0pu/MzR9km4Z0KHWEx
	 PH6KvAi56QN4QMEZADWPEVPmRAa9ZSk2FFzPKk4fdPIMo13coCUTUCHA6eYphr+dHq
	 YJggdyvGcYBCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CCAC3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172366895361.7884.15950280255398639960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9716629b38da50536e73bf4616e147445533775e02b1d100600111d902e681ad
Date: Wed, 14 Aug 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723668953
