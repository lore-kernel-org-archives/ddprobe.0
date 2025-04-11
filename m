Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E17429C336
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744406994; cv=none; b=nczs8gAX2KnkRWKSBJ5BgFKvuqtJP7yjjdSjf6wns136PMKsXPbe8dEqz9YvyxITG7Y2d1/QDooXxE0+AMTXiXqjtt6E5lAssx/ng2SqCvgeaxbh5hnNgwHjiMqFwjiPiEpeYWm6EWonGEEnFdP/ZAjVTFo73BeRVP8KXQvRJUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744406994; c=relaxed/simple;
	bh=qzRJhZv4cF59ucdfLPrNnQT/qgjZn9NVfnwJvIe+Xmo=;
	h=To:Subject:From:Message-Id:Date; b=JQL8BheU58ZNhu7p7C0EHTD7+BHdN21XAkngEC353/RQyx9wytqt8F4Cnlv5bdb3BzFjmQszfvX95YtTMJsE0Fv1HupHmNSXrZFK2MI3wZcQs6rKzH6Uz2bbDZKlka6YCuJq5XnYw8Q7bP9JoAlTEGX+QU1exkY4p8apz0d1mmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=haCqoGM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="haCqoGM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B35F4C4CEE5
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744406993;
	bh=qzRJhZv4cF59ucdfLPrNnQT/qgjZn9NVfnwJvIe+Xmo=;
	h=To:Subject:From:Date:From;
	b=haCqoGM9N/0Lm5MBG/EIG11+QHJ0tu6PEflIJBLeugfPYHIcMmVs3/q6BNO0FZkOt
	 BTcNUhwmLdaKd4CglRwkGAJwkV6NmxY1dWhKzZHlp0SZLB4VJK7fa1MoFIZYfEzrh+
	 KdfHjhli22JLJDHLqMtP6IvPgNNzlwOKIdeSJpzUqXRi1GFHMVdHDfoU1sjk7Ukql2
	 HWJHJEOKWWseOOLc7PgrL5o/VA7MmIqo1v860xERC/Dkg62ebOqNRYBM43o7diq+SV
	 ZZh81xQqrNhuLNfLe/OKfK23Fyop805VOqfbe96yfGS3CSTu2vSqezSaxD81Qsx+LX
	 d21TJ96rJUxLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F13BC369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174440699363.20604.14757708858196124638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f964601e6980bbcabb5bc0af8be316c335cb732190dade2e77dabb0957e59c3
Date: Fri, 11 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744406993
