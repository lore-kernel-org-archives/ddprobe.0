Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308AC188CC9
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754072394; cv=none; b=B/iXW84bcRgm4B+y03iQTVvIiLnYeq7P+1F5YXzd0YbV8CHkcxcnSjIvfJDQHNW44kCVLVeOW+2DFjBJ+7APSffN56H+kJrFVPwg/SqCQ/k9ydeu4C2n0D7phN9p+UgEsEZc6+lM94KAw9oaMersA70R9vEiPKPxOCXc9gBDgjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754072394; c=relaxed/simple;
	bh=PCUahmu9ASWj+iYE/oDYYW+8KQnUifxMvMwAmFcJCCw=;
	h=To:Subject:From:Message-Id:Date; b=QIuS9tOvP+65Z/OPWu0gsz8gopxm6M47Y/7VNZeR8h7HhhVP67eb8dEkFCA2pAUyxLhMFycTOv0BM1RfYQRbGTQ8EOs6wP2JgU4BJGLNLUk48zccCHaYlmIZ3+09Ga67NU1vhyHJ8Qb2VyMr/X+jbelbzPnGTDz+dhOt6J9waJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STxg+QxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STxg+QxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A973CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754072393;
	bh=PCUahmu9ASWj+iYE/oDYYW+8KQnUifxMvMwAmFcJCCw=;
	h=To:Subject:From:Date:From;
	b=STxg+QxKiwYV4m9tkjLiuRPm5yPQDNH0KL/dHRhvNCTTg8rPzxuexFDVb8ZnUsiGF
	 YUNzVHo1P6mi66rsQiUZzDsXuXNyc2rbcltxZVdAai9K3kgmRWQzuZIjS0fgN9H/1X
	 7zACC/67ixtYJvx5aqu0BkHqB3yf/md7Z3yqAP7XwkrVk6b2gQl+UnvUgPxSZZkAxy
	 X85sTXX/LJNhpXxg8yG3z/dw/pSqEuW86mvEsiJaKZd021kU73ApIvI3VZ6hSaAzRo
	 k0IGSXY3KK00fRQ66Nedc8ri4bVprkKFx1GKxt+I6JCnCMn/WxOod3fkVFUR5gisq8
	 y0ZAvqptGzf7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EE1C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175407239360.9944.3467575486835883233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e3610926682e73582dba6256da861c64cbe04eef327a71a6480fdc43700db0d
Date: Fri, 01 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754072393
