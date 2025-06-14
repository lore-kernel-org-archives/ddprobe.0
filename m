Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF341C32
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749907194; cv=none; b=Qc4TD1U/MMG/EQMGUhyAQWz9YzPJBCYZQOiOW0YtgZQYB+TqDoVP2DIJ0ZCwlId4gfR8b0p/ewB/hHz+n+zIDjnPcGhlOverYyiuzmuRi+heH61QqZvBtlY34FuftUAB84H8QoUvrpadAoJkCrXRqN7VDHFiGKgkS6TzpG6KAFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749907194; c=relaxed/simple;
	bh=XLH3qvX9Bm4sumoUTI87Im3CYHbWbb0YOQNHlyW7OqA=;
	h=To:Subject:From:Message-Id:Date; b=hyWelySK65bPB5mZ1fLc5L/o/3F9hYHh/wrF71TfEx+eCX4aL1/UUrbE6wPnUJZpj3kM6KuCWI3t8LxNVtztcYRMc9+W2etfFBo7xDvVDaXl64rCtPYBjWRUaaF0rFLPjOi7atiXed5/jRij7enLzkUOgmeQP/cB7OSYboEikuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1tlONwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1tlONwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF80AC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749907193;
	bh=XLH3qvX9Bm4sumoUTI87Im3CYHbWbb0YOQNHlyW7OqA=;
	h=To:Subject:From:Date:From;
	b=k1tlONwTIav2YlbXTlnT1hPpeYkBF1DkQ/sE7lxxrY7/tOcnK/ZLAcPNzFVLM2pq7
	 hBvT5kUctaJeJL4dbrcQpEf9mQc0bmM5uiNP+pz1y8AQY8QL67laFLUxa+Bjb13afT
	 BE4h7eYr/2tODHh+CGJ6MWfYVmxDoJMGm8SNWCcQ9B8UeiCoSGzIWxPw5exnPuzk/e
	 rHqnUo1YEdNoxZg7qwwJd/cqCrhHKqb7cekTFPTH+/WYn8tysrkrizF4tOJxHNpAc8
	 ws3GuYCPrMSAchBIJpUs3KORZOLj51f6LrQZaSQWlVsn82RVD9s9D4Uwk0tHGjxkZs
	 73fDb1Nir6nyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9FDC71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174990719362.8285.10423830453351063814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed2b5fa40c6c2951f8b2b071a25a14b8d60cb1e8690a31e6b09eaf4bb3da97ed
Date: Sat, 14 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749907193
