Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCE9274670
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787014834; cv=none; b=klRwR4k6zP3eHeC0MptMGvOMUl0haX3V6mGjDz/nzCQW0xGbSei4dngMJwDkA82KjOy+XzOFixI9387MH0TAGJdVO5qlLLGgu+kp/mqPKrRTkw8KEvuTdol0QwDj9EaGH1ffk1sDmY0agpYt3tz7QCFMQYPRDhGoBVV+CUoV7AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787014834; c=relaxed/simple;
	bh=DUz0EDN/RDj08II56KnTiLDfc0CT1s9rhELsxIEHjt8=;
	h=To:Subject:From:Message-Id:Date; b=NKk/0KnyiXq/EJddAwtD4JMHHqPd5XoxQGDC9rUTI8yKDGfnyIrCZPYrY7nBKeaSTpuoC2OSqppB9RPl8SQOiGZGytid5yzQMxakUH/Mebj3wmMxglQF0zSQ+IWvo8KHwJVf347AU2jHjd6yUpjTTh+OpRT/ZwPyB/QhTTGgQHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQqmR39o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQqmR39o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E6BC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787014833;
	bh=DUz0EDN/RDj08II56KnTiLDfc0CT1s9rhELsxIEHjt8=;
	h=To:Subject:From:Date:From;
	b=rQqmR39oj8dfuylWWUndGlQqbHONyU36T9RkneddYLq47Pce1avH9/wK1hTn8SPEE
	 mebmgh6PwbZjJ7bhq46B1ZMoQY5bt1iM8GYIzQMHvsu9pRI0BPUfVRypPlX0muSkn7
	 DHvIpYZerh4gblSrE8NYf7V2Ap7xLOddX1VCU2cCfvXRhlI7X6dHPjJ6O6fNgbwo3L
	 HPu4wokHbRjBJekqjbhbpUbNNE//uRZa/GK8M7vOnGiT657R32eEiLpkQJdCWl5BE3
	 nlHXm5INJzMkGUiBWLNxbKLakQM1Nvbsw7EW1Bw8ymEtgNomWyuuX6j0j5Q3SkL2rL
	 dT7Fzqwuv7Cjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1026C5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178701483368.32082.6482262790054545591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9885dacc044943f4caf4a87fbfdbdcd0c5ce1e694d2b39c68fd9e433c49d1e03
Date: Tue, 18 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787014833
