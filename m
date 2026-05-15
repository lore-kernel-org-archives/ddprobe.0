Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E283FDC14
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 18:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778869234; cv=none; b=Bz3gc7aYbZNBDUU7joWXoAyuRS/18XReIMvDUqOVUUO1NS7FSs72natdkwAsA15cp6+6a6G6FUI0/5IPMgokWuCWz/e/2KYMcMLX+J/54NuiSpjv8wAG0MeU6ply7dYxwZaTmtjbfeoJwBjbtlpTc0+fpH6Xlvq4z/y6TztuWYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778869234; c=relaxed/simple;
	bh=AzCHF/0ANwqS/NSWymJk1IFh/YRRcspEKV1RB7w5r2w=;
	h=To:Subject:From:Message-Id:Date; b=FP8c02VCMG4UwWwnqjmssEx+E5Y2JhQMNAK7WbVKEYOitWOrOhOWpCuuETISaW7KM+l4CzPGpsh6UbBuWqdgFjBUmSf7Yr4GVMR/pie6b1FC5bg4wAE9eWl2vgri/GmO53foKvEQCH5Gv9fQz9h+GWG2+Diy+MA3orCQX3MUIdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jV/Z6lx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jV/Z6lx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC27FC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778869233;
	bh=AzCHF/0ANwqS/NSWymJk1IFh/YRRcspEKV1RB7w5r2w=;
	h=To:Subject:From:Date:From;
	b=jV/Z6lx0AQ4Gy5aymFCfytU5SYOYJ2MDBmcFEcJQW6mNYNe99LgLd9kSC6TgmbRmq
	 04Uki8SYi39ta9MmI3kKOOZUVpikTzZUneuoI/MF6nCaTjVXbvJAQBGqLz093PT+JP
	 MBEn6uXdjsg2n7ICw+xEejlzhsfChqsxZ5LAF970wmomcTjMQzXrEBTyUFF6/T08E9
	 U4O+tWHZwhR6SZo+4JnM3odav5JbvzqZLZL9HQW73J4NNmd+c3agW4QnkR0z+nRnSP
	 UCG8kVJslUc8RHblUF9Hpu+XLUypm4gaXIAl0eXGafOxktUXXIpI4fr2BMtiEbm1hd
	 O8y6Npwdtdvog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD24DCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177886923370.25071.3711911815131028086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d46306fb89530278b1c774829df8209a029f4656c1d1645131510055d3efa01
Date: Fri, 15 May 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778869233
