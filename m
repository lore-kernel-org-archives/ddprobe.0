Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DC8221DA7
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747796394; cv=none; b=Vpcag9a+ldUNSqqsMYWHsTaw15eSYmp6o5auG01/+Nt9EpC4gxyKbHMqe3p6g4a9n2T5sbT9SGg9laK3IAjxyFERN8z+pKiQ/77Ys0fDuKekglm3IKuge+euHrZPz64ZTPSA/qiWY1Y1G8A06iVvHsI+htYJATANZLc1p/nnJeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747796394; c=relaxed/simple;
	bh=TU4jHQLNxEsGYSAGv7ZJP3TjAG7jjRVpAiio/V0RAAU=;
	h=To:Subject:From:Message-Id:Date; b=asujxJZJ7sXwAVtzGjw+XgJgfa8uLdZ8IG8qWp8mvXtzZeDQvya6o3JHEvVHgTGXbxR0irJkPUTaIXj/qoZnuEd+G2pC3tIb7Y/PbzGXIYvSDReiQ6zQnV2unRFsvkiKxPKF24ySo3AYPcASdvcIV35p8VFFPr51QUqNaQ9lXic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/QKSjvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/QKSjvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3194C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747796393;
	bh=TU4jHQLNxEsGYSAGv7ZJP3TjAG7jjRVpAiio/V0RAAU=;
	h=To:Subject:From:Date:From;
	b=l/QKSjvFN5bn72n36Kava3eX9tJv3eJ3FubmJRQrybLi49A7dynDoEeAFTzRm5flc
	 weq/K3cbWjhxkzFyhfqtqtOokvOeytyboYT/kai8rKS8iD3I1Qy7cYESMwosytzl2A
	 Q4kXOYR5WeXvnoAVsC/TeUGb3RerGXMQ6JYZY7h7zqJ0XvdI8S0atMn3vD6xFOhvuh
	 JDjvQ34oddATJvXGrdIPrwSYr+6RnPSF5rYY3HAE8k1DxgBcHvLiq8azXg66wOTb58
	 5s4vhEGqKZK7QhECRKyMIEnMQP6ArIJDqxBSW1d5KTFthNW6xyHDGkbDD8hk1ND3sO
	 hUDmbi36XL9xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBD9C3DA6D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174779639357.20904.5666424110329958457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d886c5e70ef935f39e6828b64d6bfbafb848979c178ab1b46761b8e81e8ba88b
Date: Wed, 21 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747796393
