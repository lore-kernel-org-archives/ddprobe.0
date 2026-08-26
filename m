Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FED39A4D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787772034; cv=none; b=cMCPvStqZ3y7tnfFhBRwMLlrQSf9IxDDcEGUIV9VKX4HNpUaaTHVahBfjCcyh7GMx/SDPFo1fJ1/ipGNmg7Y8SIKnZAbAQUjmL59LjwoGrW1u6g9rQa0x9u2XLRhPJ1lTNjWaLQk+s0//WSeYLTv2bykc9Axr9HqHCjYBJH06kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787772034; c=relaxed/simple;
	bh=ZMjf9rG5Cap+3h7cmsTAS8wP2o7B2G8dVBtY1dvFzUI=;
	h=To:Subject:From:Message-Id:Date; b=lIPfuKyi4ylPhd7ow8/HVS67j9Oe5/4U5RUsaIGTT+E3TVyYWRddjmE985uAqnmm9NUCg9kzuwz1NlbUmHmPABGZ0pIWbBkKr+C1Ouw4FA1caE7Di/8FrPaSYGqkm/f2yR2+unOMs77uL8J9D+uJBHrbmTXsYRvkxubppy36ZTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kc6LVQt2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kc6LVQt2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE1AC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787772033;
	bh=ZMjf9rG5Cap+3h7cmsTAS8wP2o7B2G8dVBtY1dvFzUI=;
	h=To:Subject:From:Date:From;
	b=Kc6LVQt2DL8QI63qpee22wqbhzOE3rNHJqZ2apa2yXBVaZ77u0wJupzsQPdM1F6Eb
	 VCFWIYs0koJLPvIx82b0YOuvsl0iUrZFCsA1Lr8zHKFs6Ec+yQhuiIXHHxn1QbDW1+
	 t+Wx2zZLyTveQ0xt05+ykdbUoVlMEaaYy7qGtvqIm5NblACBLGIk57BKKGahZiXtgk
	 YYJOWKBpTINrSnWIFAsxabOQjB0Y/bWh4iw2Il7bZ9m8UK9/IV5fJdV3QM5sGFp8Xm
	 3PeEijwvqS14sc6/nJkRoo+cpYvK4QsNyuG0JznhstPS9RHOowOR6emwITW9vfMjfj
	 yFSXLOACqKwTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5F3C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178777203368.1936.714141689970383326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f145161a1702f580cccabb566662a22e809db997f0057399a9af060a9d4ae79
Date: Wed, 26 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787772033
