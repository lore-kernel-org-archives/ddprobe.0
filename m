Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC02388396
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 17:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772558094; cv=none; b=gC062yddV8lNo+UDAclOJyv2NvXRR5HTcWlkSIpSTRQnfqH+q9EwDIFC877CwVCwSFcjSskfAIp4rW2kAR0h5HC79sy+5gZtCd9xZZ82SJiCEM9/f7xw1dUm5QrVdnz51WeK9zqbdpkjeAp8BfoRFfBFjIXTkpxxKFQ1GvviM6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772558094; c=relaxed/simple;
	bh=iri6BVYhzK/2Rr3MpSZwCWCEFfMUhEpDSgx07lTou14=;
	h=To:Subject:From:Message-Id:Date; b=QNePNN/6jxBtWcD5HlTcXV/fKKQNZ5grW8Md9UkJ8Ku2Jm4J0NcPFhUORCfyR8pbhuaKzxwGNZHFoBZf7ZyoYHkkzg9Hny5/r6sy6JeKDPib5xHzWHmlzmCyikW/L4tOUNyHXppnsBgOA01AHToND1jiMZIYYxLKYCzApUtENKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRpXhsOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRpXhsOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC170C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772558094;
	bh=iri6BVYhzK/2Rr3MpSZwCWCEFfMUhEpDSgx07lTou14=;
	h=To:Subject:From:Date:From;
	b=JRpXhsOuDij8Qcf+zGPWCNdKnoFP7wM6/SkRnuSivjhOCi0/vw9NCL6mXngUTEr1O
	 VQZVBaDXwVfAxAo1I4FRERGRTk08INSL7j5o+2KfgII07AC72MBAJpATj9vRdAOJqd
	 aYJz1xR6q3m1VDXSa+eVFhHzd9c00uujsJ52AkCCjdG6ZuXObpcrEJLVHYLjXsoied
	 CGtEoHIZ3U2VDhbyuB56L0rHvXQlkpqXNwnLkYrHJ4hWiGUm05pewBdSi3hrZ7NTL1
	 oLuHxB4IBlji07VehB3MUHre6UK0kKq9hANGOV690cWVpwD3GVCNqZAaEtXWO/7hbw
	 yeRpwOMnyq0jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAC99EDA6B4
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177255809380.25815.7715584704723528987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1f676fb22cb30099557462b63854085c6915a2c3043d7fa0b40c9465a1df52
Date: Tue, 03 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772558093
