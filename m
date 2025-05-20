Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330FA1DA617
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747708794; cv=none; b=JND413z58h2/jaQeT2RHY4O1e9hQUyngw8RhOtCp90LFi3iQlRKxXYSOGRx+nbnByJS6bGhdeAYUxN3zKOKof1aJWBB7BHnBtGyJtXKooRX2O1EVrtlwi5/IesOjtBRcbbrEyf6a7XT4Cc0goRd9UdvU+MMqEg03+1i4SfvHyuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747708794; c=relaxed/simple;
	bh=4DESM827WViE8jJbtiNcd1TtG/RXl8EkuvN9LRVmutM=;
	h=To:Subject:From:Message-Id:Date; b=Q28JAE4Vf518PHigJMDjwVYJY41kIQzz/Y+yuR2WqRGzNVS1L1jVWbWHObbhzw5FivAUd8QQTcGlZ/LmoBGBnmmGuXSHCnE68A5erq77nNliK/GogJTGcOEVToC7+HMfPac8xw6RyZdNgUBMtdmmaqz1ROKiMewooAB1bAcpOEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pioJM8xD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pioJM8xD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F21CC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747708793;
	bh=4DESM827WViE8jJbtiNcd1TtG/RXl8EkuvN9LRVmutM=;
	h=To:Subject:From:Date:From;
	b=pioJM8xD10enx+zOWykzGWGkHJWYM5pCrvbbV6CXjJzPZdqRmCnEWBKwy2Ywir3Yy
	 uT/pUrok9+oPqoL4n8blQDaA9SAEoG+GBkmbVcfbDgd2R2Rix+t2rCMMOcozuT7sKP
	 /BT9CfyZuiwj3oFOrm1kvDP+xr5WIBLdMqKqw7RSFJa9mOAChRIQduW0hWSVG4BVMh
	 lpNHXzY6bv+wBwGzsDMOiqQFrK+kiv48SkLbg4p9hQdCO164/YoXw16jYG3QIFfwLP
	 S3nEA0uCaMjlKh4YO82E4r2U8Odvd8NAA53X21l9sXXGjGGQWnikZx4DdBxaXpzHfU
	 /pP9lEZPvhe/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D989C54754
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174770879357.28941.3165988083446165535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 370a6afd322c149b3826d695fb7b5c5e3e1b891558fee5fe702a194bfcdf8545
Date: Tue, 20 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747708793
