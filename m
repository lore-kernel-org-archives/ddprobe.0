Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305F71E2834
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754853594; cv=none; b=eODh72hcfnzYMKz2YqyGrT0voZP7YSPAP+8fgoQVkInrwnOD9w8igwa6BxVFH+J1NnvAPmqh8k+G0hVYpiQKiR5mT7aEvRTYlLB7SzN19zLaDLm/qXZSojBZwyxgg9+6gP299lWu50n/84+OxQpnnGGgkqNDrEGi5Fjyqsu1oPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754853594; c=relaxed/simple;
	bh=NNmueME9UFLe7BX9Zk2l043Hs9IweJA4v3cEeFxrxJQ=;
	h=To:Subject:From:Message-Id:Date; b=RC3SF0Ev3JzpswXt4ajmiuhZEyZObGWC2dJXZ+BZFdksyyYnomCycvCn9rZdVCWmOYtDMld+iOL/KBDJFunXIlinMlZt9NfrdLd68VP3ARQUH4tHVkh9vrluRdGLABJoQ4P0ma6twN/02Udd32/8+Nd9VSz1iET4TU5JX6eOZxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHrthBkB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHrthBkB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15B5C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754853593;
	bh=NNmueME9UFLe7BX9Zk2l043Hs9IweJA4v3cEeFxrxJQ=;
	h=To:Subject:From:Date:From;
	b=dHrthBkB/Pqjedo+HZBEskv4b9AM3D3E5qDSACo7oXw3SBrqDprLjxMeXCSuqbs8O
	 1p66oNgVIlxkV9Z++nOiXTkDqJBn81byiWmrWabVeQQU+Ukn2hqmfWRx0hvRDjTXIe
	 01L7Jc0vcyPn/ebrdMYQiswRbUfvDhFhMh37eg6Rbo+hYIG4O6DyP9w2YhtzQ+HuWA
	 b2kNXS8cR14tuhkYEXQofNXSVXanLXHD28a4V4PtOfmRXIFJ9g/3PPbnj2YBTI/iQh
	 kBU7bgGwN8/ZiKLjfhGsQm/vhsNpvDNTEkBMWuZ58mt/CeKs0InTh7bzAZJjlK3F+A
	 lFXKZOWjW/t6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90215C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175485359358.23250.11733772584658479782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47444a0e6e81dd650041d80c6ed10f38c33d6d9e7340a967a3ac763d7f7dfb6d
Date: Sun, 10 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754853593
