Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDE9217736
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754746794; cv=none; b=RAQiFRol3lxBLjB/L0s38HPX1G9xaDTmm44Sj0duvET3e8PIFMoMRPKGJUvMHf6+oNetYRD7ScZ9Z6ZweUnrLSVYTY4hZyoakLMLZWzR7+ZGgrosnWlyPnen1rIQm+RoXzXzbbXq7nYRiHHkesLcv5hWwooAWC14A5fmSqcL2rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754746794; c=relaxed/simple;
	bh=O5Qj5zquQyhwIUkEe3SExNr7A2uYo8fRwJovsXviFFI=;
	h=To:Subject:From:Message-Id:Date; b=U1iifuMZqBoEMnxXf7D32gINzF7migYqfBNDn75Vie93f9pFI43DbF0nPFEoP2/dqFU9ps0cBGM5n5zB2hA6ORcwvF0AnuhB0APVD1YepRrjEAFZH9x7vUUEyWMZVAEKEhpHOfzbDCX3En48c9PhiMdI/LJyC+xCtpmaBpMvK4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+0WzpgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+0WzpgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD00C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754746793;
	bh=O5Qj5zquQyhwIUkEe3SExNr7A2uYo8fRwJovsXviFFI=;
	h=To:Subject:From:Date:From;
	b=A+0WzpgXTNiu5AvZpMalY7M2itODrx1eWYOCgjjef0UDa2dmG7SGrMH4dsi1m/OIj
	 j45/rWfkOmB4ErQZpnlbJGLnGW1PhJzEeKlH0I3xFPNEy9jp5D1k9awxvZEj4lkwXw
	 Nh3ivIGiAXuU7w4kg68dbwkDMcCZk1FbqFhHSwvpcouuZGWbM8FQ9dSK+Td41HA0mt
	 7CTM+fitydtCxF3HM4ftESB3t73kRSFg6og4JW1DHu8lgSLqsW5uUinpDaXXHrrc5Y
	 Yhrdg7ZcLNkATWtUAcIjBM62kSRuJsHkhMVyx12iB5/KR+4ykAn0wPI/VRBLZiKzN4
	 7JHbBQwBW3z4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9847EC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175474679359.16671.8924033531561488458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46cd27c0b850def130f974c05c3137166d26af1961c59761bd48f7fade314f0d
Date: Sat, 09 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754746793
