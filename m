Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DFFE14EC73
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786893634; cv=none; b=k2XbX9uGCEUKvuF9Mvb60QPwFlOxslnmr9r8JPVsKIJZyJmm97IAyLFBBJFE/0y+Y6mzeKlubYcyc/PrDrLTNIxCrvg/qnyyzWfuFppJHbBJiBsiV1mSjlkGGeahgZzDCFrfMlYmoNqD7GzoDVxNIDgnXLYMkm1gKf60Q1bbZRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786893634; c=relaxed/simple;
	bh=dlOmjkIXrbfdWFFptcH6d+PyeVNMq6EfJkV1RKxPP0k=;
	h=To:Subject:From:Message-Id:Date; b=jvURw+Mk4RrNOpgS5IOsG53FmM4f65KuB1vTS2NzYf8gI4u1cKDiDEAUblDJK+c07tPkqYzuGAjLZSCR7sFBvDqIOONfUrG33W6q7e+OPBXRchGD3v5fFh9etBxFSpypWbuse8uAEEi3FGT1tJOgDiPEF0lR+LR6wNNomKjuxF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4OlkTad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4OlkTad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16D1C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786893633;
	bh=dlOmjkIXrbfdWFFptcH6d+PyeVNMq6EfJkV1RKxPP0k=;
	h=To:Subject:From:Date:From;
	b=X4OlkTad3SV1mvahAIG9ZQRSWZoLbl9Hf2wf/ITKw/NaC3uG223cA+cWuK2CLgFy4
	 gWGDJaIZI6d1vnQ+q+/L44c1PwEZQClzlW/VFu71OTzxUJGvOAQFW/dvte8CF0vGU5
	 4N7+KvR/LYOx/hNBMnb29jw+qMrf3HmFQl96v3YDuL6yYu1tb1rN3iNxFwVdfAekOe
	 1nwvf6Si/whZQaE7v7pkR3y0oSYipV4j8MkipqfO6VNpb7iNRXZCdHhRJ2Bbp496ES
	 9YY58hpb2b3RQ+YzSPFydBBMjrNriQ0RaZJ4qWla3UAOb2TbiMKNj0on/7cktLUkGv
	 0CCjtV8sf0YEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4C8C5DF6D
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178689363368.5132.18183795118436594266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657affda448283a35fb4c2c11044160e02a111c09123a38597fb9e20abc3010b
Date: Sun, 16 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786893633
