Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372B91E1E13
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742403594; cv=none; b=klMhtCVohnvgfg8VfUrVEcvNZ1+PQBkeDuMGg5zYZqI7+nfE9T8TRZgp2N+Ea1HoBcaE62L9TfYekTaZ1LZ1IgwGgpN5eH88MjMx5RgOaF0vR2XGwBJm+gc3uXY/W9MquLs90Aa4an2eg+TLMKLDbnb7ePyjQiZsD/MJCMI1J8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742403594; c=relaxed/simple;
	bh=hsonAzQBoho0UsuaSUObubXLddr93O5DGaA7u3d6OHM=;
	h=To:Subject:From:Message-Id:Date; b=eENJ4iSqVIVvKiAXU2K4mK+vLv2WB1xoeQlO+Efr03EOTb8Cu1hSQjqQe3vyNzg44P3eB7lMC8uDHLkeryHOLy4/R6FM/0VCe7MpbkE+UdXnyTToGVATqFxSeEAzrD7XeaxT8hGBZSlTMmQrGCXlGY0jDNGZDi5Ftsa7YoIZn3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lz4e3lgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lz4e3lgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13D8C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742403593;
	bh=hsonAzQBoho0UsuaSUObubXLddr93O5DGaA7u3d6OHM=;
	h=To:Subject:From:Date:From;
	b=lz4e3lgw24Cc6agzwyz+2zNadu4cqDO8dAc9EsS1pHJzoXXlJ6j/MtE9H74C6Gm52
	 pH5BcDgYFEeBGzZyEzFpxQ7Tw/bL3AMBa1OUk/hx1Uvmir1xPohU0iUG1gk5qi/M/k
	 Pf96Wy1UBNL1MhEFAgxlOR3DuHv3RBySBpwS6yht+Pu673UJRybpwk0zpzDYfgzJ2v
	 yJCVftG5227jn8utINQDL/Prxx2wjE0hI1ZPl9HwO1Zc+M4/Z9cerpRNifC7wGc13w
	 d8f6I7LIkk2YUH4n0DYcLBIzEr7zcIJ+nneq6W+PigR48hMyR9/kOy+HfFD6LknxCY
	 9IlvCUk/Dsv2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D43C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174240359361.24218.5456755796749034832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa523e5c2b814e83e7783a272ad961012e65499f566131ecc699738a0ea2e77
Date: Wed, 19 Mar 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742403593
