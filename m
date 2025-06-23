Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BC7221FCC
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750714794; cv=none; b=n1Tg0K7kPSlR2DuzX6t3UcJ7M+Woatrr/rDjlb+g2IY+OI+3SVB6BgoWzoTnwe24ppF+o9Gb4TGEMbQBxPPJ+pKKpNZm1odz9knBIRMjxvNCLD7Dmu8XGGrtBazjf5woDd9Tyd7IvnSVEFKZRySAueKf2m/HkLoS+Ju7JuCTbWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750714794; c=relaxed/simple;
	bh=TxoW4l0DB4ssYC60maiU9dzBx8VlJN8M67b4dKCTsH0=;
	h=To:Subject:From:Message-Id:Date; b=nthjTxa2h1hCRy1a4i6jPjYCo4+n+Hq2N1fQHpL5wksQf88lPS0DterNfoKLjESkLi0mYBwf2kd085ItzhS1Wes/pvIrkqM1Z7+5CTSSnG79L1XL0RvZmDCyrorCbqIiJLJQSKbMT8xgahm6D+TuR1egQSYbMeQz9CzbRUDMWQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PReqk20v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PReqk20v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA7FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750714793;
	bh=TxoW4l0DB4ssYC60maiU9dzBx8VlJN8M67b4dKCTsH0=;
	h=To:Subject:From:Date:From;
	b=PReqk20vq9rdpJUMbJ68ne/GcLn6nJb4xy8aO308TY4b7mzR6qTRo1jelpHUfTAa8
	 MRzLraYqo18cqc7i5YbMWR8jENnQqYiRmHGGQOMly3UFt3XxgSpsSwqiqLK5wdkOwm
	 aO2EMXH5I9mRWsKSOpHG2+khpW0kPXnywMI+voeOI1eiTXo5jhgDqRjZ+xt9n+S7tR
	 8fprrCPjGPxGaSPhE4iGPcwEQqf+yBPxa7G9jGx0hC4Cjl3Y+dg5bRA52u5lDFzxZV
	 1PH8lGnhKkzy9ybAsn5cBrXRF+kXYMaYWGO3AVrmWh+zLP30WQ422yD9wp/kZpAJXW
	 GRmZE3J9STz4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFBC77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175071479358.18682.16075299640233607938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3145fc5f4a7c9c1655a716303bf790513a569abe84bee3ed14424c660c2adf23
Date: Mon, 23 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750714793
