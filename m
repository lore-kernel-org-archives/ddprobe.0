Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A24A23AD
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755410994; cv=none; b=VjzfuwM+tsv3FVvgxjX8cneNbG1YrD5bRy502/jnnOJt8vJclykdBfmgh3cr6Fw1WzGDkHDTvkA6anRYwYboxyCc4SaLBj2w7bXsaCVYngJX8QCsk2UPZp1m5qyeIAEn/NTlUaXtlVbuBILuioL8fNJQys8X9RFP+wqoBP0BNdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755410994; c=relaxed/simple;
	bh=i5SEjO4j2EeteH8Q1vIeYgWCNnNzJhAcd1GlaAJe0jk=;
	h=To:Subject:From:Message-Id:Date; b=qkYXY0uR8MNpjiQq8bF24rejPY+uJVylWf8GYCUIsgRlbgYnpz68R/4wI7yN8OSagkDGRD9MThmNg3mSZwqDcwpjSU4xnvexKjNaef7Ck9fA7rwq3bx3hPaEIZyAk8Rq+gorSFP00P40LIlOs5oZdqGYPw6uRxbFXCxGwTilB/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZqDdhNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZqDdhNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F3BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755410993;
	bh=i5SEjO4j2EeteH8Q1vIeYgWCNnNzJhAcd1GlaAJe0jk=;
	h=To:Subject:From:Date:From;
	b=RZqDdhNTX9gVMlxt7tsiRQ/NEGXtmY5eSkHKSe4q7qKMDXnBgmAq271T7LWpTi3S/
	 jRBtXhREN4JEiuwNiED6VhVqf8imAlz1CZBAKq3zcXFRoyqCuY3y2Q8sBddnMRDvaN
	 7PNq/LxYxiiregHzTQ3cKxWHia6XSJPNGRvApeZ1eFiz/pR/7/89q4PIsLdMbura3n
	 gP29mqKHuO6ANjdR9iSxG0iTNYIS5UBkfap45+IZLOoiaJyuZhTWsqzL6jkYt3MAWn
	 pxZbPz1iZERD+F22qqgE32ijpG2s5TokjbGTBOKdKCleguZk5yWal6eTVg9VhqofSu
	 YT+6tLDyb4W+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E8CCA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175541099358.6125.7398097332230659467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e635ff6a76ecfa80542b202899bf3f87579acd8c6f0d7388b709ce9cc663c609
Date: Sun, 17 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755410993
