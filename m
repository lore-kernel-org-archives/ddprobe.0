Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397171BC4E
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752346194; cv=none; b=m3+bkG/VkXM2x+39bIJTitzXPuq3xebIoViwmPk/f88eTLqwanhG5WIgmHhQa2/loVHhteUqQZ9yldmm4K9QhyPSxHloy+VJsS5SrEkE+nY2qu7RhkWo8Pi/vmgIq982Qy1vy16S1wQiUtD80xwrrYS4E6gRKgYUnaae/EH7cUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752346194; c=relaxed/simple;
	bh=Rr9+B4iuj+yJP1hzB1OIpOGNMV+Gk9e1ODQzKtrOjw8=;
	h=To:Subject:From:Message-Id:Date; b=e02bT2Abp7hfSBhTrSOZQSPP2XAUXIQiaB3rVlq5jyQuWzjl2LSwkBtb5aNnFo2yPvdcNj+/tq/npxW6P8dz7gm2X+GpdFjlJ/TH63K2Z0C44kNw0zkTj+RYsBsEVRn1xIKrzYKNSwjLpt9E3cDJuMb7PDnlQ7y+zMW3BTen5jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOnuYHN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOnuYHN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A428CC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752346193;
	bh=Rr9+B4iuj+yJP1hzB1OIpOGNMV+Gk9e1ODQzKtrOjw8=;
	h=To:Subject:From:Date:From;
	b=vOnuYHN+CU6khkle1YtKFD42Qsegw5TXtgsFOVE2NorfRZfzgPE50yW/QY5JIJY5c
	 5dIc9K/YUrIKt4Ytd3jlu/J8GVBcVFA14erqMjqlRz9w5/kwQVqkFSbadN7/2qVaWU
	 YDymijNceE7EjkJ9suvNOwlFC58mEQd7ByouCBJO/CFNExrK0l52ibn3SCnd6qDjV4
	 iSCMafqBeEeo8xEue0mWwht9GsDEMd9RAeF+xjn+6cI1wOhmac1FiaMEvaYiDPRjpk
	 MQMYfJP4jJq0Bz7QX7VMtT4s5W3Zez3ezAz+IhJ5e6l+QzH8sQDy97bKjppr/KNRyn
	 XRgBBdJQc9BCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91982C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175234619357.10280.43931012694993425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34171e530974d295fcda9eac7078d8ffafb0b85ba93c91b87215d10435da3992
Date: Sat, 12 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752346193
