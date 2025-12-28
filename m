Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231869460
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766940234; cv=none; b=mg+3oIeiD8g2NbhLA4TJuqxzQz0+A+pkZCUl/kxS0zVv6t/2QIMbF4ThaeWie0NbmSIsgw6pI4LFvEy0ni7QCL2YkqHJz/HmNYBW3I9JZg1JdzYI3bSedihI+TF9XfY2+pK4g/Rwhpqe/TkafYS3Aq4q+3Jh5/+gb3ccjUETLxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766940234; c=relaxed/simple;
	bh=NjISIaipCw4CczbKVt3dDuMlzY1kC2G9Wyz7w5NicvI=;
	h=To:Subject:From:Message-Id:Date; b=aA1w7E4KzSTMUeGeG86ZhC4TE2f8XTEzT8LdHKSDm2yANmdGKzed1VpFCQtzkJZyg9ivZWFDYDDZFHvkE1xIEw7kDnOiyBbClc4dFX6XnzSwIChPlRDTeET+WiejG0f4TgzeMc6lbZBCpvfVfwhedrt3TbrtpxwTEI0UAGbDvN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOv1MOxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOv1MOxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15B8C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766940233;
	bh=NjISIaipCw4CczbKVt3dDuMlzY1kC2G9Wyz7w5NicvI=;
	h=To:Subject:From:Date:From;
	b=JOv1MOxHWtBEzPvxhVXuhIySv9NWvDBwB/NDj6ciRn5Ozu7ecdDykf8TinONLwOm2
	 9UQwMEoxDb9vilu1fjsefs8GIar3LSWT7ngPg09PjxtVMi6PGg9S8RJU+q/rhYdh2E
	 Fq+jl5i7NGmwgX2Ld96R2GLEdIop6UYrM5AmAmb/vSy8G/oUk2BK3j259u44+8vobG
	 fw5L9j/b5/OR2xTIpprEDsudcpMas4RT/7UuljJL574aBIRG50C2+TTggTNDETYl1w
	 M//dsMisLn2AL0VJ0mKAJhACsyDmXqRHuWWdGhxD7Zb2KYlV2sBQxBkWSmokuPXVYy
	 sxqHBOj4ZzgSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC95D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176694023358.12184.17379749786427077051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05c28c92862044ac4c2446a4cdd9d96797e6bd58dc385507a06e8fcd11302379
Date: Sun, 28 Dec 2025 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766940233
